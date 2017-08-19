package cn.itcast.shop.user.dao;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.JOptionPane;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import cn.itcast.shop.user.service.UserService;
import cn.itcast.shop.user.vo.User;


public class ExportExport {
	
	@SuppressWarnings("deprecation")
	public void Exprot(UserService userservice){
		//声明一个工作溥
		HSSFWorkbook wb = new HSSFWorkbook();
		//声明一个单子并命名
		HSSFSheet sheet  = wb.createSheet("会员列表");
		//给单子名称一个长度
		sheet.setDefaultColumnWidth((short)20);
		//生成一个样式
		HSSFCellStyle style = wb.createCellStyle();
		//创建第一行（也可以称为表头）
		HSSFRow row = sheet.createRow(0);
		//样式居中
		style.setAlignment(HSSFCellStyle.ALIGN_CENTER);
		//给表头第一行一次创建单元格
		HSSFCell cell = row.createCell((short)0);
		cell.setCellValue("用户Id");
		cell.setCellStyle(style);
		cell = row.createCell((short)1);
			cell.setCellValue("昵称");
			cell.setCellStyle(style);
			cell = row.createCell((short)1);
			cell.setCellValue("真实姓名");
			cell.setCellStyle(style);
			cell = row.createCell((short)2);
			cell.setCellValue("手机");
			cell.setCellStyle(style);
			cell = row.createCell((short)3);
			cell.setCellValue("邮箱");
			cell.setCellStyle(style);
			cell = row.createCell((short)4);
			cell.setCellValue("地址");
			cell.setCellStyle(style);
			cell = row.createCell((short)5);
			cell.setCellValue("状态");
			cell.setCellStyle(style);
			cell = row.createCell((short)6);
			cell.setCellValue("会员卡");
			cell.setCellStyle(style);
			cell = row.createCell((short)7);
			cell.setCellValue("积分");
			cell.setCellStyle(style);
			cell = row.createCell((short)8);
			cell.setCellValue("余额");
			cell.setCellStyle(style);
			cell = row.createCell((short)9);
			cell.setCellValue("VIP");
			cell.setCellStyle(style);
			
			
			//添加数据
			List<User> list = new ArrayList<User>();
			list.add(new User());
			list.add(new User());
			list.add(new User());
			//向单元格里填充数据
			for(short i = 0; i < list.size(); i++)
			{
				row = sheet.createRow(i + 1);
				row.createCell(0).setCellValue(list.get(i).getUid());
				row.createCell(1).setCellValue(list.get(i).getUsername());
				row.createCell(2).setCellValue(list.get(i).getName());
				row.createCell(3).setCellValue(list.get(i).getPhone());
				row.createCell(4).setCellValue(list.get(i).getEmail());
				row.createCell(5).setCellValue(list.get(i).getAddr());
				row.createCell(6).setCellValue(list.get(i).getState());
				row.createCell(7).setCellValue(list.get(i).getCard());
				row.createCell(8).setCellValue(list.get(i).getUcode());
				row.createCell(9).setCellValue(list.get(i).getVIP());
				
			}
			try{
				FileOutputStream out = new FileOutputStream("E://会员列表.xls");
				wb.write(out);
				out.close();
				JOptionPane.showMessageDialog(null,"导出成功");
			}catch(FileNotFoundException e){
				JOptionPane.showMessageDialog(null, "导出失败");
				e.printStackTrace();
			}catch(IOException e){
				JOptionPane.showMessageDialog(null, "导出失败");
				e.printStackTrace();
			}
	}
}
