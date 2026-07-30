# 图片提取代码工具对比分析

## Objective
用户需要从图片中提取代码的工具，要求精准、免费、最好本地使用。对比OCR工具与GPT视觉模型。

## Key Conclusions

### OCR vs GPT视觉模型
- GPT视觉模型代码识别准确率95%+，远超OCR（70-85%）
- GPT能理解代码语义，自动还原缩进、补全缺失字符
- OCR不理解代码结构，逐字识别容易出错
- 但OCR可以本地免费运行，GPT必须联网

### 推荐方案
1. **最精准**：ChatGPT上传图片提取（95%+）
2. **免费+本地**：PaddleOCR（百度开源，85-90%，pip安装）
3. **本地+4GB显存**：Qwen2-VL-2B（90%+，视觉模型，4GB显存可跑）

### 用户环境
- 已安装Whisper（Python环境已配置）
- 4GB显存（可跑2B参数视觉模型）
- 需要免费方案

## Tool Commands
- PaddleOCR安装：pip install paddlepaddle paddleocr
- 使用示例：from paddleocr import PaddleOCR; ocr = PaddleOCR(use_angle_cls=True, lang='en')
