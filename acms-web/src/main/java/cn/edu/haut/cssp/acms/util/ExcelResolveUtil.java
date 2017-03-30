package cn.edu.haut.cssp.acms.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Excel解析工具
 * Description:
 * @project:acms-web
 * @author: 徐礼华
 * @date: 2017年3月29日下午11:31:05
 * @note:
 */
public class ExcelResolveUtil {
    
    private Logger logger = LoggerFactory.getLogger(this.getClass());
   
    /**
     * Excel对象
     */
    private HSSFWorkbook workbook;
    /**
     * sheet页号
     */
    private int sheetNumber;
    /**
     * 要读取的有效数据列
     */
    private int rowLenth;
   
    /**
     * 读取excel文件
	 * @author: 徐礼华
	 * @date: 2017年3月29日下午11:31:05
     * @param fileName 文件完整路径名称
     * @param sheetNum sheet页号(默认为第一个,以0开始)
     * @param rowLenth 要读取的列数
     * @throws Exception
     */
	public ExcelResolveUtil(String fileName, int sheetNum, int rowLenth) throws Exception {
		this.sheetNumber = sheetNum;
		this.rowLenth = rowLenth;
		InputStream in = new FileInputStream(new File(fileName));
		try {
			workbook = new HSSFWorkbook(in);
		} catch (Exception e) {
			logger.error("读取Excel文件失败！", e);
			throw e;
		} finally {
			in.close();
			in = null;
		}
	}
	
	/**
     * 读取excel文件
     * @author: 徐礼华
     * @date: 2017年3月29日下午11:31:05
     * @param in 文件输入流
     * @param sheetNum sheet页号(默认为第一个,以0开始)
     * @param rowLenth 要读取的列数
     * @throws Exception
     */
	public ExcelResolveUtil(InputStream in, int sheetNum, int rowLenth) throws Exception {
		this.sheetNumber = sheetNum;
		this.rowLenth = rowLenth;
		try {
			workbook = new HSSFWorkbook(in);
		} catch (Exception e) {
			logger.error("读取Excel文件失败！", e);
			throw e;
		} finally {
			in.close();
			in = null;
		}
	}
   
    /**
     * 解析Excel文件
     * @Description:
     * @author: 徐礼华
     * @date: 2017年3月29日下午11:31:55
     * @return
     */
	public List<String[]> getDatasInSheet(){
        List<String[]> result = new ArrayList<String[]>();
       
        //获得指定的sheet
        HSSFSheet sheet = workbook.getSheetAt(sheetNumber);
        //获得sheet总行数
        int rowCount = sheet.getLastRowNum();
        logger.info("found excel rows count:" + rowCount);
        if(rowCount < 1){
        	logger.info("EXCEL文件中不包含数据!");
            return null;
        }
        if (rowCount > 20001) {
			logger.info("EXCEL文件中数据大于20000条!");
            return null;
		}
       
        //遍历行row
        for (int rowIndex = 1; rowIndex <= rowCount; rowIndex++) {
            //获得行对象
            HSSFRow row = sheet.getRow(rowIndex);
            if(null != row){
                String[] rowData = new String[rowLenth + 1];
                //获得本行中单元格的个数
                int cellCount = row.getLastCellNum();
                //遍历列cell
                if (cellCount > rowLenth) {
                	cellCount = rowLenth;
				} else if (cellCount < 1) {
					result.add(rowData);
					continue;
				}
                
                for (int cellIndex = 0; cellIndex < cellCount; cellIndex++) {
                    HSSFCell cell = row.getCell(cellIndex);
                    //获得指定单元格中的数据
                    Object cellStr = this.getCellString(cell);
					rowData[cellIndex] = (String) cellStr;
                }
                rowData[rowLenth] = String.valueOf(rowIndex + 1);
                result.add(rowData);
            }
        }
       
        return result;
    }
   
    /**
     * 根据类型获取对应的值
     * @Description:
     * @author: 徐礼华
     * @date: 2017年3月29日下午11:32:17
     * @param cell
     * @return
     */
    private Object getCellString(HSSFCell cell) {
        Object result = null;
        if(cell != null){
            //单元格类型：Numeric:0,String:1,Formula:2,Blank:3,Boolean:4,Error:5
            int cellType = cell.getCellType();
            switch (cellType) {
            case Cell.CELL_TYPE_STRING:
                result = cell.getStringCellValue();
                break;
            case Cell.CELL_TYPE_NUMERIC:
                result = new DecimalFormat("#").format(cell.getNumericCellValue());
                break;
            case Cell.CELL_TYPE_FORMULA:
                result = cell.getNumericCellValue();
                break;
            case Cell.CELL_TYPE_BOOLEAN:
                result = cell.getBooleanCellValue();
                break;
            case Cell.CELL_TYPE_BLANK:
                result = null;
                break;
            case Cell.CELL_TYPE_ERROR:
                result = null;
                break;
            default:
                System.out.println("枚举了所有类型");
                break;
            }
        }
        return result;
    }
    
}
