.class Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->showGivenOrAvailableNotification(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

.field final synthetic val$notifOrNull:Lcom/mixpanel/android/mpmetrics/InAppNotification;

.field final synthetic val$parent:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1378
    const-class v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1378
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    iput-object p2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$notifOrNull:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$parent:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private trackNotificationSeen(Lcom/mixpanel/android/mpmetrics/InAppNotification;)V
    .locals 7
    .param p1, "notif"    # Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .prologue
    .line 1440
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    iget-object v4, v4, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const-string v5, "$campaign_delivery"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getCampaignProperties()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 1442
    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    iget-object v4, v4, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPeople()Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v4

    iget-object v5, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    invoke-virtual {v5}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->withIdentity(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;

    move-result-object v3

    .line 1443
    .local v3, "people":Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1444
    .local v0, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getCampaignProperties()Lorg/json/JSONObject;

    move-result-object v2

    .line 1446
    .local v2, "notifProperties":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "$time"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :goto_0
    const-string v4, "$campaigns"

    invoke-virtual {p1}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1451
    const-string v4, "$notifications"

    invoke-interface {v3, v4, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;->append(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1452
    return-void

    .line 1447
    :catch_0
    move-exception v1

    .line 1448
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "MixpanelAPI"

    const-string v5, "Exception trying to track an in app notification seen"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 1382
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getLockObject()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v6

    .line 1383
    .local v6, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1385
    :try_start_0
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->hasCurrentProposal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-eqz v10, :cond_0

    .line 1435
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1437
    :goto_0
    return-void

    .line 1389
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$notifOrNull:Lcom/mixpanel/android/mpmetrics/InAppNotification;

    .line 1390
    .local v8, "toShow":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    if-nez v8, :cond_1

    .line 1391
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getNotificationIfAvailable()Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    .line 1393
    :cond_1
    if-nez v8, :cond_2

    .line 1435
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1397
    :cond_2
    :try_start_2
    invoke-virtual {v8}, Lcom/mixpanel/android/mpmetrics/InAppNotification;->getType()Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    move-result-object v2

    .line 1398
    .local v2, "inAppType":Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
    sget-object v10, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->TAKEOVER:Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;

    if-ne v2, v10, :cond_3

    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$parent:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/mixpanel/android/mpmetrics/ConfigurationChecker;->checkSurveyActivityAvailable(Landroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v10

    if-nez v10, :cond_3

    .line 1435
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1402
    :cond_3
    :try_start_3
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$parent:Landroid/app/Activity;

    invoke-static {v10}, Lcom/mixpanel/android/util/ActivityImageUtils;->getHighlightColorFromBackground(Landroid/app/Activity;)I

    move-result v1

    .line 1403
    .local v1, "highlightColor":I
    new-instance v7, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-direct {v7, v8, v1}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;-><init>(Lcom/mixpanel/android/mpmetrics/InAppNotification;I)V

    .line 1405
    .local v7, "proposal":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    iget-object v11, v11, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;
    invoke-static {v11}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$500(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v10, v11}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->proposeDisplay(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1406
    .local v5, "intentId":I
    sget-boolean v10, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->$assertionsDisabled:Z

    if-nez v10, :cond_4

    if-gtz v5, :cond_4

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1435
    .end local v1    # "highlightColor":I
    .end local v2    # "inAppType":Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
    .end local v5    # "intentId":I
    .end local v7    # "proposal":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    .end local v8    # "toShow":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :catchall_0
    move-exception v10

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v10

    .line 1408
    .restart local v1    # "highlightColor":I
    .restart local v2    # "inAppType":Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;
    .restart local v5    # "intentId":I
    .restart local v7    # "proposal":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;
    .restart local v8    # "toShow":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    :cond_4
    :try_start_4
    sget-object v10, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$2;->$SwitchMap$com$mixpanel$android$mpmetrics$InAppNotification$Type:[I

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/InAppNotification$Type;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 1429
    const-string v10, "MixpanelAPI"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unrecognized notification type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " can\'t be shown"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :goto_1
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->this$1:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;

    iget-object v10, v10, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v10}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1100(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1432
    invoke-direct {p0, v8}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->trackNotificationSeen(Lcom/mixpanel/android/mpmetrics/InAppNotification;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1435
    :cond_5
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_0

    .line 1410
    :pswitch_0
    :try_start_5
    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->claimDisplayState(I)Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;

    move-result-object v0

    .line 1411
    .local v0, "claimed":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    new-instance v3, Lcom/mixpanel/android/mpmetrics/InAppFragment;

    invoke-direct {v3}, Lcom/mixpanel/android/mpmetrics/InAppFragment;-><init>()V

    .line 1412
    .local v3, "inapp":Lcom/mixpanel/android/mpmetrics/InAppFragment;
    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getDisplayState()Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;

    move-result-object v10

    check-cast v10, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;

    invoke-virtual {v3, v5, v10}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->setDisplayState(ILcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$InAppNotificationState;)V

    .line 1413
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/mixpanel/android/mpmetrics/InAppFragment;->setRetainInstance(Z)V

    .line 1414
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$parent:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v9

    .line 1415
    .local v9, "transaction":Landroid/app/FragmentTransaction;
    const/4 v10, 0x0

    sget v11, Lcom/mixpanel/android/R$anim;->com_mixpanel_android_slide_down:I

    invoke-virtual {v9, v10, v11}, Landroid/app/FragmentTransaction;->setCustomAnimations(II)Landroid/app/FragmentTransaction;

    .line 1416
    const v10, 0x1020002

    invoke-virtual {v9, v10, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1417
    invoke-virtual {v9}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_1

    .line 1421
    .end local v0    # "claimed":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;
    .end local v3    # "inapp":Lcom/mixpanel/android/mpmetrics/InAppFragment;
    .end local v9    # "transaction":Landroid/app/FragmentTransaction;
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$parent:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-class v11, Lcom/mixpanel/android/surveys/SurveyActivity;

    invoke-direct {v4, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1422
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x10000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1423
    const/high16 v10, 0x20000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1424
    const-string v10, "com.mixpanel.android.surveys.SurveyActivity.INTENT_ID_KEY"

    invoke-virtual {v4, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    iget-object v10, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;->val$parent:Landroid/app/Activity;

    invoke-virtual {v10, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 1408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
