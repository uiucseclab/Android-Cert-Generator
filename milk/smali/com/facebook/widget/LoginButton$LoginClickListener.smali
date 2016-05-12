.class Lcom/facebook/widget/LoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LoginButton;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LoginButton;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LoginButton;Lcom/facebook/widget/LoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/facebook/widget/LoginButton;
    .param p2, "x1"    # Lcom/facebook/widget/LoginButton$1;

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lcom/facebook/widget/LoginButton$LoginClickListener;-><init>(Lcom/facebook/widget/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 16
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 804
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v12}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 805
    .local v3, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/internal/SessionTracker;->getOpenSession()Lcom/facebook/Session;

    move-result-object v9

    .line 807
    .local v9, "openSession":Lcom/facebook/Session;
    if-eqz v9, :cond_4

    .line 809
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->confirmLogout:Z
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$700(Lcom/facebook/widget/LoginButton;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 811
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v12}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/facebook/android/R$string;->com_facebook_loginview_log_out_action:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 812
    .local v6, "logout":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v12}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/facebook/android/R$string;->com_facebook_loginview_cancel_action:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 814
    .local v2, "cancel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v12

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v12

    invoke-interface {v12}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_2

    .line 815
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v12}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_as:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->user:Lcom/facebook/model/GraphUser;
    invoke-static {v15}, Lcom/facebook/widget/LoginButton;->access$500(Lcom/facebook/widget/LoginButton;)Lcom/facebook/model/GraphUser;

    move-result-object v15

    invoke-interface {v15}, Lcom/facebook/model/GraphUser;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 819
    .local v7, "message":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 820
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/4 v13, 0x1

    .line 821
    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    new-instance v13, Lcom/facebook/widget/LoginButton$LoginClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lcom/facebook/widget/LoginButton$LoginClickListener$1;-><init>(Lcom/facebook/widget/LoginButton$LoginClickListener;Lcom/facebook/Session;)V

    .line 822
    invoke-virtual {v12, v6, v13}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 827
    invoke-virtual {v12, v2, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 828
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog;->show()V

    .line 862
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "cancel":Ljava/lang/String;
    .end local v3    # "context":Landroid/content/Context;
    .end local v6    # "logout":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v12}, Lcom/facebook/widget/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;

    move-result-object v5

    .line 864
    .local v5, "logger":Lcom/facebook/AppEventsLogger;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 865
    .local v10, "parameters":Landroid/os/Bundle;
    const-string v13, "logging_in"

    if-eqz v9, :cond_a

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v10, v13, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->loginLogoutEventName:Ljava/lang/String;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$1500(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v5, v12, v13, v10}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 869
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 870
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->listenerCallback:Landroid/view/View$OnClickListener;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$1600(Lcom/facebook/widget/LoginButton;)Landroid/view/View$OnClickListener;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 872
    :cond_1
    return-void

    .line 817
    .end local v5    # "logger":Lcom/facebook/AppEventsLogger;
    .end local v10    # "parameters":Landroid/os/Bundle;
    .restart local v2    # "cancel":Ljava/lang/String;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v6    # "logout":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    invoke-virtual {v12}, Lcom/facebook/widget/LoginButton;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/facebook/android/R$string;->com_facebook_loginview_logged_in_using_facebook:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "message":Ljava/lang/String;
    goto :goto_0

    .line 830
    .end local v2    # "cancel":Ljava/lang/String;
    .end local v6    # "logout":Ljava/lang/String;
    .end local v7    # "message":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    goto :goto_1

    .line 833
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v4

    .line 834
    .local v4, "currentSession":Lcom/facebook/Session;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/SessionState;->isClosed()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 835
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->sessionTracker:Lcom/facebook/internal/SessionTracker;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$400(Lcom/facebook/widget/LoginButton;)Lcom/facebook/internal/SessionTracker;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/facebook/internal/SessionTracker;->setSession(Lcom/facebook/Session;)V

    .line 836
    new-instance v12, Lcom/facebook/Session$Builder;

    invoke-direct {v12, v3}, Lcom/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->applicationId:Ljava/lang/String;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$800(Lcom/facebook/widget/LoginButton;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/facebook/Session$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/Session$Builder;->build()Lcom/facebook/Session;

    move-result-object v11

    .line 837
    .local v11, "session":Lcom/facebook/Session;
    invoke-static {v11}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 838
    move-object v4, v11

    .line 840
    .end local v11    # "session":Lcom/facebook/Session;
    :cond_6
    invoke-virtual {v4}, Lcom/facebook/Session;->isOpened()Z

    move-result v12

    if-nez v12, :cond_0

    .line 841
    const/4 v8, 0x0

    .line 842
    .local v8, "openRequest":Lcom/facebook/Session$OpenRequest;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$900(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    if-eqz v12, :cond_8

    .line 843
    new-instance v8, Lcom/facebook/Session$OpenRequest;

    .end local v8    # "openRequest":Lcom/facebook/Session$OpenRequest;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->parentFragment:Landroid/support/v4/app/Fragment;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$900(Lcom/facebook/widget/LoginButton;)Landroid/support/v4/app/Fragment;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 848
    .end local v3    # "context":Landroid/content/Context;
    .restart local v8    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_7
    :goto_3
    if-eqz v8, :cond_0

    .line 849
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v12

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->defaultAudience:Lcom/facebook/SessionDefaultAudience;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1100(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionDefaultAudience;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 850
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v12

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->permissions:Ljava/util/List;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1200(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 851
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v12

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->loginBehavior:Lcom/facebook/SessionLoginBehavior;
    invoke-static {v12}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1300(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/SessionLoginBehavior;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 853
    sget-object v12, Lcom/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/facebook/internal/SessionAuthorizationType;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/widget/LoginButton$LoginClickListener;->this$0:Lcom/facebook/widget/LoginButton;

    # getter for: Lcom/facebook/widget/LoginButton;->properties:Lcom/facebook/widget/LoginButton$LoginButtonProperties;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton;->access$1000(Lcom/facebook/widget/LoginButton;)Lcom/facebook/widget/LoginButton$LoginButtonProperties;

    move-result-object v13

    # getter for: Lcom/facebook/widget/LoginButton$LoginButtonProperties;->authorizationType:Lcom/facebook/internal/SessionAuthorizationType;
    invoke-static {v13}, Lcom/facebook/widget/LoginButton$LoginButtonProperties;->access$1400(Lcom/facebook/widget/LoginButton$LoginButtonProperties;)Lcom/facebook/internal/SessionAuthorizationType;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 854
    invoke-virtual {v4, v8}, Lcom/facebook/Session;->openForPublish(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 844
    .restart local v3    # "context":Landroid/content/Context;
    :cond_8
    instance-of v12, v3, Landroid/app/Activity;

    if-eqz v12, :cond_7

    .line 845
    new-instance v8, Lcom/facebook/Session$OpenRequest;

    .end local v8    # "openRequest":Lcom/facebook/Session$OpenRequest;
    check-cast v3, Landroid/app/Activity;

    .end local v3    # "context":Landroid/content/Context;
    invoke-direct {v8, v3}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .restart local v8    # "openRequest":Lcom/facebook/Session$OpenRequest;
    goto :goto_3

    .line 856
    :cond_9
    invoke-virtual {v4, v8}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto/16 :goto_1

    .line 865
    .end local v4    # "currentSession":Lcom/facebook/Session;
    .end local v8    # "openRequest":Lcom/facebook/Session$OpenRequest;
    .restart local v5    # "logger":Lcom/facebook/AppEventsLogger;
    .restart local v10    # "parameters":Landroid/os/Bundle;
    :cond_a
    const/4 v12, 0x1

    goto/16 :goto_2
.end method
