<div id="main-content">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<!-- BOX -->
				<div class="box border blue">
					<div class="box-title">
						<h4>
							<i class="fa fa-table"></i>
							<a href="main?cmd=showFollowupPlans&stmId=12&ssmId=13&stmId=12&ssmId=13" style="color: white;">开医嘱</a> >>
							<a href="main?cmd=showFollowupPlans&stmId=12&ssmId=13&stmId=12&ssmId=13" style="color: white;">新开医嘱</a>
						</h4>
						<div class="tools">
							<a id="addFollowupPatientBtn" href="#box-config" data-toggle="modal" class="config">
								<i class="fa fa-cog">确定</i>
							</a>
						</div>
					</div> 	
					<!-- 查询框开始 -->
					<div class="box-body">
						 <form class="form-horizontal " action="#">
							<div class="form-group">
								<label class="col-md-2 control-label">患者信息</label>
								<div class="col-md-4" style="padding-top: 6px;">
									
								</div>
								<label class="col-md-2 control-label">医嘱类型</label>
								<div class="col-md-4" style="padding-top: 6px;">
													<input type="radio" class="uniform" name="ywgms" id="ywgms" checked value="1">临时&nbsp;&nbsp;
													<input type="radio" class="uniform" name="ywgms" id="ywgms" value="2">长期&nbsp;&nbsp;
								</div>
							</div>									
							<div class="form-group">
								<label class="col-md-2 control-label">医嘱模板</label>
								<div class="col-md-10" style="padding-top: 6px;">
									<input type="radio" class="uniform" name="yzmb" id="yzmb" checked value="1">通用模板&nbsp;&nbsp;
									<input type="radio" class="uniform" name="yzmb" id="yzmb" checked value="1">老年男性&nbsp;&nbsp;
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">老年女性&nbsp;&nbsp;		
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">中年女性&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">中年男性&nbsp;&nbsp;			
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">青年女性&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">青年男性&nbsp;&nbsp;			
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">糖尿病&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">高血压&nbsp;&nbsp;			
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">血稠&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">出血倾向&nbsp;&nbsp;				
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">心血管&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">脑血管&nbsp;&nbsp;											
								</div>
							</div>												
							<div class="form-group">
								<label class="col-md-12 control-label">
									<button type="button" class="btn btn-primary">添加</button>
									<button type="button" class="btn btn-primary">插入</button>
									<button type="button" class="btn btn-primary">复制上次</button>
									<button type="button" class="btn btn-primary">查看历史医嘱</button>
									<button type="button" class="btn btn-primary">预览</button>
								</label>
							</div>																						
						</form>
					</div>
					<!-- 查询框结束 -->
					<!-- 患者列表开始 -->
					<div class="box-body">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>#</th>
									<th>类型</th>
									<th>性别</th>
									<th>年龄</th>
									<th>教育程度</th>
									<th>职业</th>
									<th>收入</th>
									<th>手机</th>
									<th>邮件</th>
									<th>标签</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>1</td>
									<td>
										<select class="form-control">
											<option value="1">药品</option>
											<option value="1">治疗</option>
											<option value="1">耗材</option>
											<option value="1">检查</option>
										</select>
									</td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="p_1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
											<div id="p_tag_1" class="popover fade left in" style="top: 120px; left: 830px; display: none;">
												<div class="arrow"></div>
												<h3 class="popover-title">赵一的标签</h3>
												<div class="popover-content">
													<button class="btn btn-xs btn-primary">老年</button>
													<button class="btn btn-xs btn-primary">低收入</button>
													<button class="btn btn-xs btn-primary">体力劳动</button>
													<button class="btn btn-xs btn-primary">IgA肾病</button>
													<button class="btn btn-xs btn-primary">CKD四期</button>
													<button class="btn btn-xs btn-primary">腹膜透析</button>
													<button class="btn btn-xs btn-primary">血管通路</button>
												</div>
											</div>
										</a>
									</td>
								</tr>	
								<tr>
									<td>2</td>
									<td><a href="#">钱二</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>3</td>
									<td><a href="#">孙三</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>4</td>
									<td><a href="#">李四</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="#">周五</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>	
								<tr>
									<td>6</td>
									<td><a href="#">武六</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>7</td>
									<td><a href="#">郑七</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="jc1" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>
								<tr>
									<td>8</td>
									<td><a href="#">王八</a></td>
									<td>男</td>
									<td>55</td>
									<td>小学</td>
									<td>司机</td>
									<td>5000~10000</td>
									<td>13912340000</td>
									<td>zs@abc.com</td>
									<td style="text-align: center;">
										<a id="p_8" href="javascript:;" class="remove">
											<i class="fa fa-info-circle"></i>
										</a>
									</td>
								</tr>				
							</tbody>
						</table>

						
						
						
					<table style="width: 100%; text-align: right;">
					<tr><td>
					<ul class="pagination">
					<li><a href="#">共*条记录，共*页第*页</a></li>
					<li><a href="#">««</a></li>
					<li><a href="#">«</a></li>
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li class="active"><a href="#">4</a></li>
					<li><a href="#">5</a></li>
					<li><a href="#">»</a></li>
					<li><a href="#">»»</a></li>
					</ul>
					</td></tr>
					</table>
					</div>
					<!-- 患者列表结束 -->
				</div>
				<!-- /BOX -->
				
				
				
				<div class="row">
							<div class="col-md-12">
								<!-- BOX -->
								<div class="box border blue">
									<div class="box-title">
										<h4>
											<i class="fa fa-columns"></i>
											<a href="#" style="color: white;">开医嘱</a> >>
											新开医嘱
										</h4>
										<div class="tools">
											<a href="#box-config" data-toggle="modal" class="config">
												<i class="fa fa-cog"></i>确定
											</a>
										</div>
									</div>
									<div class="box-body big">
										<div class="alert alert-success">
										  <h4>患者信息</h4>
										  <p>床号：B035 姓名：张三 性别：男 年龄：50岁 身高：175cm 体重：66kg</p> <p></p>
										  <h4>医嘱模板</h4>
										  <p>
									<input type="radio" class="uniform" name="yzmb" id="yzmb" checked value="1">通用模板&nbsp;&nbsp;
									<input type="radio" class="uniform" name="yzmb" id="yzmb" checked value="1">老年男性&nbsp;&nbsp;
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">老年女性&nbsp;&nbsp;		
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">中年女性&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">中年男性&nbsp;&nbsp;			
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">青年女性&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">青年男性&nbsp;&nbsp;			
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">糖尿病&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">高血压&nbsp;&nbsp;			
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">血稠&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">出血倾向&nbsp;&nbsp;				
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">心血管&nbsp;&nbsp;	
									<input type="radio" class="uniform" name="yzmb" id="yzmb" value="2">脑血管&nbsp;&nbsp;			
										  </p>
										</div>
										<div class="row">
										  <div class="col-md-6">
											 <div class="panel panel-default">
												<div class="panel-body">
													 <div class="tabbable">
														<ul class="nav nav-tabs">
														   <li class="active"><a href="#tab_1_1" data-toggle="tab"><i class="fa fa-home"></i> Home</a></li>
														   <li><a href="#tab_1_2" data-toggle="tab"><i class="fa fa-envelope"></i> Messages</a></li>
														   <li><a href="#tab_1_3" data-toggle="tab">Profile</a></li>
														</ul>
														<div class="tab-content">
														   <div class="tab-pane fade in active" id="tab_1_1">
															  <div class="divide-10"></div>
															  <p> There were flying cantaloupes, rainbows and songs of happiness near by, I mean I was a little frightened by the flying fruit but I'll take this any day over prison inmates. I skipped closer and closer to the festivities and when I arrived I seen all my friends I had went to high school with there were holding hands and singing Kumbayah around the camp ice.. Yes It was a giant block of ice situated on three wood logs. </p>
														   </div>
														   <div class="tab-pane fade" id="tab_1_2">
																<div class="divide-10"></div>
															  <p> Everyone turned toward me and gave me the death stare and I knew I had screwed up once again, they all walked in slow motion towards me saying the same familiar chant I had heard earlier, before anyone could reach me I awoke in a frantic sweaty rush in my bed. My legs were no longer on fire and I felt slightly normal again. I noticed that my mom, a preacher, and several other family members were standing around me. </p>
														   </div>
														   <div class="tab-pane fade" id="tab_1_3">
																<div class="divide-10"></div>
															  <p> Yesterday I was on my way to class, when a black cat fell from the sky. I didn't really know what that nonsense was about so I asked him if I could step around him because he was bad luck, but he simply meowed and then disappeared. I was a bit worried that maybe he'd teleported to somewhere dangerous, but a wizard came and assured me that it was alright. I threw my Zune at him because I was 78% sure he was lying. The wizard roared at me and sentenced my mother to thirty five years of chain smoking. I was sad. [do] </p>
														   </div>
														</div>
													 </div>
												 </div>
											 </div>
										  </div>
										  <div class="col-md-6">
											  <div class="panel panel-default">
													<div class="panel-body">
														 <div class="tabbable  tabs-below">
															<div class="tab-content">
															   <div class="tab-pane fade in active" id="tab_2_1">
																  <p><span class="label label-success arrow-in">Offer</span> Title with stickers.</p>
																  <p> blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammeled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business</p>
															   </div>
															   <div class="tab-pane fade" id="tab_2_2">
																  <p> first competitive browser, which was complete with its own features and tags. It was also the first browser to support style sheets, which at the time was seen as an obscure authoring technique.[5] The HTML markup for tables was originally intended for displaying tabular data. However designers quickly realized the potential of using HTML tables for creating the complex, multi-column layouts that were otherwise not possible. At this time, as design and good aesthetics seemed to take precedence over</p>
															   </div>
															   <div class="tab-pane fade" id="tab_2_3">
																  <p> Netscape Communicator code under an open source licence, enabling thousands of developers to participate in improving the software. However, they decided to stop and start from the beginning, which guided the development of the open source browser and soon expanded to a complete application platform.[5] The Web Standards Project was formed, and promoted browser compliance with HTML and CSS standards by creating Acid1, Acid2, and Acid3 tests. 2000 was a big year for Microsoft</p>
															   </div>
															</div>
															<ul class="nav nav-tabs">
															   <li class="active"><a href="#tab_2_1" data-toggle="tab"><i class="fa fa-bullhorn"></i> Discounts</a></li>
															   <li><a href="#tab_2_2" data-toggle="tab">Section 2</a></li>
															   <li><a href="#tab_2_3" data-toggle="tab">Section 3</a></li>
															</ul>
														 </div>
													</div>
												</div>
										  </div>
									   </div>
									   <div class="row">
										  <div class="col-md-6">
											<div class="panel panel-default">
												<div class="panel-body">
													 <div class="tabbable tabs-left">
														<ul class="nav nav-tabs">
														   <li class="active"><a href="#tab_3_1" data-toggle="tab">Desktop</a></li>
														   <li><a href="#tab_3_2" data-toggle="tab">Laptop</a></li>
														   <li><a href="#tab_3_3" data-toggle="tab">Mobile</a></li>
														</ul>
														<div class="tab-content">
														   <div class="tab-pane fade in active" id="tab_3_1">
															  <p>Accordingly, a design may be broken down into units design on a website may identify what works for its target market. This can be an age group or particular strand of culture; thus the designer may understand the trends of its audience. Designers may also understand the type of website they are designing, meaning, for example, that (B2B) business-to-business website design considerations might differ greatly from a consumer targeted website such as a retail or entertainment website. Careful consideration might be made to ensure that the </p>
														   </div>
														   <div class="tab-pane fade" id="tab_3_2">
															  <p>Motion graphics may be expected or at least better received with an entertainment-oriented website. Alternative to HTML-table-based layouts and grid-based design in both page layout design principle, and in coding technique, but were very slow to be adopted.[note 1] This was due to considerations of screen reading devices and windows varying in sizes which designers have no control over. Accordingly, a design may be broken down into units (sidebars, content blocks, embedded advertising areas, navigation areas) that are sent to the browser and which will be fitted into the display window b</p>
														   </div>
														   <div class="tab-pane fade" id="tab_3_3">
															  <p>The choice of whether or not to use motion graphics may depend on the target market for the website. Motion graphics may be expected or at least better received with an entertainment-oriented website. However, a website target audience with a more serious or formal interest (such as business, community, or government) might find animations unnecessary and distracting if only for entertainment or decoration purposes. This doesn't mean that more serious content couldn't be enh</p>
														   </div>
														</div>
													 </div>
													</div>
												</div>
										  </div>
										  <div class="col-md-6">
											<div class="panel panel-default">
												<div class="panel-body">
													 <div class="tabbable  tabs-right">
														<ul class="nav nav-tabs tabs-right">
														   <li class="active"><a href="#tab_4_1" data-toggle="tab"><span class="badge badge-red font-11">4</span> Section 1</a></li>
														   <li><a href="#tab_4_2" data-toggle="tab">Section 2</a></li>
														   <li><a href="#tab_4_3" data-toggle="tab">Section 3</a></li>
														</ul>
														<div class="tab-content">
														   <div class="tab-pane fade in active" id="tab_4_1">
															  <p>I want to eat the cheese of candy unicorns web presence through strategic solutions on targeting viewers to the site, by using marketing and promotional techniques on the internet
																SEO writers to research and recommend the correct words to be incorporated into a particular website and make the website more accessible and found on numerous search engines
																Internet copywriter to create the written content of the page to appeal to the </p>
														   </div>
														   <div class="tab-pane fade" id="tab_4_2">
															  <p>That is a heaven sent inaction to failure!  Accordingly, a design may be broken down into units (sidebars, content blocks, embedded advertising areas, navigation areas) that are sent to the browser and which will be fitted into the display window by the browser, as best it can. As the browser does recognize the details of the reader's screen (window size, font size relative to window etc.) the browser can make user-specific layout adjustments to fluid layouts, but not</p>
														   </div>
														   <div class="tab-pane fade" id="tab_4_3">
															  <p> After eating that pie you may go smell the roses of the divine heaven whether or not to use interactivity that requires plug-ins is a critical decision in user experience design. If the plug-in doesn't come pre-installed with most browsers, there's a risk that the user will have neither the know how, nor the patience to install a plug-in just to access the content. If the function requires advanced coding language skills, it may be too costly in either time or money to code compared to the amount of enhancement the function will add to the user experien</p>
														   </div>
														</div>
													 </div>
													</div>
												</div>
										  </div>
									   </div>
									</div>
								</div>
								<!-- /BOX -->
							</div>
						</div>
				
				
				
				
				
			</div>
		</div>			
	</div>
</div>

<script type="text/javascript">
$(document).ready(function () {
	$("#p_1").bind("mouseover", showTags);
	$("#p_1").bind("mouseout", hideTags);
	$("#pd_1").bind("click", deletePatient);
	$("#rd_1").bind("click", enrollPatient);
	$("#addFollowupPatientBtn").bind("click", showAddFollowupPatient);
});

function showTags() {
	$("#p_tag_1").css("display", "block");
}

function hideTags() {
	$("#p_tag_1").css("display", "none");
}

function deletePatient() {
	confirm("您确定要删除这个患者吗？");
}

function showAddFollowupPatient() {
	window.location.href = "main?cmd=showAddFollowupPlan&stmId=12&ssmId=13&stmId=12&ssmId=13";
}

function enrollPatient() {
	window.location.href = "main?cmd=showEnrollFollowupPatient&stmId=1&ssmId=56&stmId=1";
}
</script>
                    