<?php if (!defined('THINK_PATH')) exit();?>﻿<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <title>全国-公司列表-拉勾网-最专业的互联网招聘平台</title>
        <meta content="全国condition-condition-公司列表-拉勾网-最专业的互联网招聘平台" name="description">
        <meta content="全国condition-公司列表-拉勾网-最专业的互联网招聘平台" name="keywords">
        <link rel="Shortcut Icon" href="h/images/favicon.ico">
        <link rel="stylesheet" type="text/css" href="/Public/HomeStyle/css/style.css" />
        <link rel="stylesheet" type="text/css" href="/Public/HomeStyle/css/external.min.css"
        />
        <link rel="stylesheet" type="text/css" href="/Public/HomeStyle/css/popup.css" />
        <script src="/Public/HomeStyle/js/jquery.1.10.1.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="/Public/HomeStyle/js/jquery.lib.min.js"></script>
        <script src="/Public/HomeStyle/js/ajaxfileupload.js" type="text/javascript"></script>
        <script type="text/javascript" src="/Public/HomeStyle/js/additional-methods.js"></script>
        <style>
            .hc_tag dl dt {
                width: 80px;
            }
        </style>
        <!--[if lte IE 8]>
            <script type="text/javascript" src="/Public/HomeStyle/js/excanvas.js">
            </script>
        <![endif]-->
    </head>
    
    <body>
        <div id="body">
            <div id="header">
    <div class="wrapper">
        <a href="<?php echo U('Home/Index/index');?>" class="logo">
            <img src="/Public/HomeStyle/images/logo.png" width="229" height="43" alt="拉勾招聘-专注互联网招聘" />
        </a>
        <?php if (!$_COOKIE['state']) :?>
        <!-- 未登录头部 -->
        <ul class="reset" id="navheader">
            <li <?php if(company == 'index'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/Index/index');?>">首页</a></li>
            <li <?php if(company == 'company'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/Index/companylist');?>" >公司</a></li>
            <li <?php if(company == 'resume'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Resume/index');?>" rel="nofollow">我的简历</a></li>
            <li <?php if(company == 'job'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/CompanyJob/create');?>" rel="nofollow">发布职位</a></li>
        </ul>
        <ul class="loginTop">
            <li><a href="<?php echo U('User/login');?>" rel="nofollow">登录</a></li> 
            <li>|</li>
            <li><a href="<?php echo U('User/register');?>" rel="nofollow">注册</a></li>
        </ul>
        <?php endif ;?>

        <?php if ($_COOKIE['state'] == 1) :?>
        <!-- 个人用户头部 -->
         <ul class="reset" id="navheader">
            <li <?php if(company == 'index'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/Index/index');?>">首页</a></li>
            <li <?php if(company == 'company'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/Index/companylist');?>" >公司</a></li>
            <li <?php if(company == 'resume'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Resume/index');?>" rel="nofollow">我的简历</a></li>
        </ul>
        <dl class="collapsible_menu">
            <dt>
                <span><?php echo $_SESSION['user']['username']?>&nbsp;</span>
                <span class="red dn" id="noticeDot-0"></span>
                <i></i>
            </dt>
            <dd><a href="<?php echo U('CollectionJob/index');?>">我收藏的职位</a></dd>
            <dd class="btm"><a href="###">我的订阅</a></dd>
            <dd><a href="<?php echo U('Home/CompanyJob/create');?>">我要招人</a></dd>
            <dd><a href="###">帐号设置</a></dd>
            <dd class="logout"><a rel="nofollow" href="<?php echo U('User/logout');?>">退出</a></dd>
        </dl>
        <?php endif ;?>
        <?php if ($_COOKIE['state'] == 2) :?>
        <!-- 公司用户头部 -->
         <ul class="reset" id="navheader">
            <li <?php if(company == 'index'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/Index/index');?>">首页</a></li>
            <li <?php if(company == 'company'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/Index/companylist');?>" >公司</a></li>
            <li <?php if(company == 'handle'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/ResumeHandle/unhandle');?>" rel="nofollow">简历管理</a></li>
            <li <?php if(company == 'job'): ?>class="current"<?php endif; ?>><a href="<?php echo U('Home/CompanyJob/create');?>" rel="nofollow">发布职位</a></li>
        </ul>
        <dl class="collapsible_menu">
            <dt>
                <span><?php echo $_SESSION['user']['username']?>&nbsp;</span>
                <span class="red dn" id="noticeDot-0"></span>
                <i></i>
            </dt>
            <dd><a rel="nofollow" href="<?php echo U('Home/CompanyJob/positions');?>">我发布的职位</a></dd>
            <dd><a href="<?php echo U('Home/ResumeHandle/unhandle');?>">我收到的简历</a></dd>
            <dd class="btm"><a href="<?php echo U('Home/Company/index');?>">我公司的主页</a></dd>
            <dd><a href="<?php echo U('Home/Resume/index');?>">我要找工作</a></dd>
            <dd><a href="<?php echo U('Home/Company/updatePwd');?>">帐号设置</a></dd>
            <dd class="logout"><a rel="nofollow" href="<?php echo U('User/logout');?>">退出</a></dd>
        </dl>
        <?php endif ;?>
    </div>
</div>
            <!-- end #header -->
            <div id="container">
                <div class="clearfix">
                    <div class="content_l">
                        <form id="companyListForm" name="companyListForm" method="get" action="<?php echo U('Home/Index/search');?>">
                            <input type="hidden" id="city" name="city" value="全国" />
                            <input type="hidden" id="fs" name="fs" value="" />
                            <input type="hidden" id="ifs" name="ifs" value="" />
                            <input type="hidden" id="ol" name="ol" value="" />
                            <dl class="hc_tag">
                                <dt>
                                    <!-- <h2 class="fl">热门公司</h2> -->
                                    <ul class="workplace reset fr" id="workplaceSelect">
                                        <?php foreach (C('city')['hot'] as $hotVal):?>
                                        <li>
                                            <a href="javascript:void(0)"<?php if($hotVal == '全国'): ?>class="current"<?php endif; ?>><?php echo ($hotVal); ?></a> |
                                        </li>
                                        <?php endforeach ;?>
                                        <li class="more">
                                            <a href="javascript:void(0)">
                                                其他
                                            </a>
                                            <div class="triangle citymore_arrow"></div>
                                        </li>
                                        <li id="box_expectCity" class="searchlist_expectCity dn">
                                            <span class="bot"></span>
                                            <span class="top"></span>
                                            <?php foreach (C('city')['other'] as $key=>$otherVal): ?>
                                            <dl>
                                                <dt><?php echo ($key); ?></dt>
                                                <dd>
                                                    <?php foreach(C('city')['other'][$key] as $val): ?>
                                                    <span><?php echo ($val); ?></span>
                                                    <?php endforeach ;?>
                                                </dd>
                                            </dl>
                                            <?php endforeach; ?>
                                        </li>
                                    </ul>
                                </dt>
                                <dd>
                                    <dl>
                                        <dt>发展阶段：</dt>
                                        <dd>
                                            <?php foreach (C('company_stage') as $stageVal):?>
                                            <a href="javascript:void(0)"><?php echo ($stageVal); ?></a>
                                            <?php endforeach; ?>
                                        </dd>
                                    </dl>
                                    <dl>
                                        <dt>行业领域：</dt>
                                        <dd>
                                            <?php if(is_array($trade)): foreach($trade as $key=>$tradeVal): ?><a href="javascript:void(0)"><?php echo ($tradeVal["name"]); ?></a><?php endforeach; endif; ?>
                                        </dd>
                                    </dl>
                                </dd>
                            </dl>
                            <ul class="hc_list reset">
                                <?php if(is_array($company)): foreach($company as $key=>$comVal): ?><li>
                                    <a href="<?php echo U('Home/Index/showCompany', array('id'=>$comVal['id']));?>" target="_blank">
                                        <h3 title="<?php echo ($comVal["short_name"]); ?>">
                                            <?php echo ($comVal["short_name"]); ?>
                                        </h3>
                                        <div class="comLogo">
                                            <?php if(empty($comVal["logo"])): ?><img src="/Public/HomeStyle/images/logo_default.png" width="190" height="190" alt="CCIC" />
                                            <?php else: ?>
                                            <img src="<?php echo ($comVal["logo"]); ?>" width="190" height="190" alt="<?php echo ($comVal["short_name"]); ?>" /><?php endif; ?>
                                            <ul>
                                                <li>
                                                    <?php echo ($comVal["trade"]); ?>
                                                </li>
                                                <li>
                                                    <?php echo ($comVal["city"]); ?>，<?php echo C('company_stage')[$comVal['stage']];?>
                                                </li>
                                            </ul>
                                        </div>
                                    </a>
                                    <?php if(is_array($comVal["job"])): foreach($comVal["job"] as $key=>$jobVal): ?><a href="<?php echo U('Home/JobShow/index', array('jid'=>$jobVal['id']));?>" target="_blank">
                                        <?php echo ($jobVal["name"]); ?>
                                    </a><?php endforeach; endif; ?>
                                    <ul class="reset ctags">
                                        <?php if(is_array($comVal["tag"])): foreach($comVal["tag"] as $key=>$tagVal): ?><li><?php echo ($tagVal["name"]); ?></li><?php endforeach; endif; ?>
                                    </ul>
                                </li><?php endforeach; endif; ?>
                            </ul>
                            <div class="Pagination"><?php echo ($page); ?></div>
                        </form>
                    </div>
                    <div class="content_r">
                        <div class="subscribe_side">
                            <a href="subscribe.html" target="_blank">
                                <div class="subpos">
                                    <span>
                                        订阅
                                    </span>
                                    职位
                                </div>
                                <div class="c7">
                                    拉勾网会根据你的筛选条件，定期将符合你要求的职位信息发给你
                                </div>
                                <div class="count">
                                    已有
                                    <em>3</em>
                                    <em>4</em>
                                    <em>2</em>
                                    <em>1</em>
                                    <em>0</em>
                                    人订阅
                                </div>
                                <i>我也要订阅职位</i>
                            </a>
                        </div>
                        <div class="greybg qrcode mt20">
                            <img src="/Public/HomeStyle/images/companylist_qr.png" width="242" height="242" alt="拉勾微信公众号二维码"
                            />
                            <span class="c7">
                                扫描拉勾二维码，微信轻松搜工作
                            </span>
                        </div>
                        <!-- <a href="h/speed/speed3.html" target="_blank" class="adSpeed"></a> -->
                        <a href="h/subject/jobguide.html" target="_blank" class="eventAd">
                            <img src="/Public/HomeStyle/images/subject280.jpg" width="280" height="135" />
                        </a>
                        <a href="h/subject/risingPrice.html" target="_blank" class="eventAd">
                            <img src="/Public/HomeStyle/images/rising280.png" width="280" height="135" />
                        </a>
                    </div>
                </div>
                <input type="hidden" value="" name="userid" id="userid" />
                <script type="text/javascript" src="/Public/HomeStyle/js/company_list.min.js"></script>
                <div class="clear"></div>
                <input type="hidden" id="resubmitToken" value="" />
                <a id="backtop" title="回到顶部" rel="nofollow"></a>
            </div>
            <!-- end #container -->
        </div>
        <!-- end #body -->
        <div id="footer">
    <div class="wrapper">
        <a rel="nofollow" target="_blank" href="about.html">
            联系我们
        </a>
        <a target="_blank" href="http://www.lagou.com/af/zhaopin.html">
            互联网公司导航
        </a>
        <a rel="nofollow" target="_blank" href="http://e.weibo.com/lagou720">
            拉勾微博
        </a>
        <a rel="nofollow" href="javascript:void(0)" class="footer_qr">
            拉勾微信
            <i>
            </i>
        </a>
        <div class="copyright">
            &copy;2013-2014 Lagou
            <a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action"
            target="_blank">
                京ICP备14023790号-2
            </a>
        </div>
    </div>
</div>
        <script type="text/javascript" src="/Public/HomeStyle/js/core.min.js">
        </script>
        <script type="text/javascript" src="/Public/HomeStyle/js/popup.min.js">
        </script>
        <script type="text/javascript">
            jQuery(function($) {

                    $('.hc_list li:nth-child(1)').css('clear', 'both');
                    $('.hc_list li:nth-child(4)').css('clear', 'both');
                    $('.hc_list li:nth-child(7)').css('clear', 'both');
                    $('.hc_list li:nth-child(10)').css('clear', 'both');
                    $('.hc_list li:nth-child(13)').css('clear', 'both');
            })
        </script>
        <!-- -->
    </body>

</html>