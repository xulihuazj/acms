package cn.edu.haut.cssp.acms.web.action;
import org.patchca.color.ColorFactory;
import org.patchca.color.SingleColorFactory;
import org.patchca.filter.predefined.*;
import org.patchca.font.RandomFontFactory;
import org.patchca.service.ConfigurableCaptchaService;
import org.patchca.utils.encoder.EncoderHelper;
import org.patchca.word.RandomWordFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.IOException;
import java.util.Random;

/**
 * patchca生成多彩验证码
 *
 * @author leizhimin 14-5-5 下午11:51
 */
@Controller
public class LoginController {    private static ConfigurableCaptchaService cs = new ConfigurableCaptchaService();
    private static Random random = new Random();
    static {
//        cs.setColorFactory(new SingleColorFactory(new Color(25, 60, 170)));
        cs.setColorFactory(new ColorFactory() {
            @Override
            public Color getColor(int x) {
                int[] c = new int[3];
                int i = random.nextInt(c.length);
                for (int fi = 0; fi < c.length; fi++) {
                    if (fi == i) {
                        c[fi] = random.nextInt(71);
                    } else {
                        c[fi] = random.nextInt(256);
                    }
                }
                return new Color(c[0], c[1], c[2]);
            }
        });
        RandomWordFactory wf = new RandomWordFactory();
        wf.setCharacters("23456789abcdefghigkmnpqrstuvwxyzABCDEFGHIGKLMNPQRSTUVWXYZ");
        wf.setMaxLength(4);
        wf.setMinLength(4);
        cs.setWordFactory(wf);
    }
    @RequestMapping(value = "/pcrimg", method = RequestMethod.GET)
    public void crimg(HttpServletRequest request, HttpServletResponse response) throws IOException {
    	ConfigurableCaptchaService captchaService = new ConfigurableCaptchaService();
		//设置颜色
		captchaService.setColorFactory(new SingleColorFactory(new Color(25, 60, 170)));
		captchaService.setFilterFactory(new CurvesRippleFilterFactory(captchaService.getColorFactory()));
		// 设置字体
		RandomFontFactory fontFactory = new RandomFontFactory();
		fontFactory.setMinSize(35);
		fontFactory.setMaxSize(35);
		// 设置字体大小
		RandomWordFactory wordFactory = new RandomWordFactory();
		wordFactory.setMinLength(4);
		wordFactory.setMaxLength(4);
		captchaService.setWordFactory(wordFactory);
		captchaService.setFontFactory(fontFactory);
		// 设置图片大小
		captchaService.setHeight(50);
		captchaService.setWidth(140);
		try {
			ImageIO.write(captchaService.getCaptcha().getImage(), "JPEG", response.getOutputStream());
		} catch (IOException e) {
			e.printStackTrace();
		}
		//modelMap.put("cs", captchaService.getCaptcha().getImage());
		System.out.println(captchaService.getCaptcha().getImage());
		try {
			ServletOutputStream stream = response.getOutputStream();
			String validate_code = EncoderHelper.getChallangeAndWriteImage(captchaService, "png", stream);
			//存入session中
			request.getSession().setAttribute("reg_val_code", validate_code);
			stream.flush();
			stream.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
    }
}