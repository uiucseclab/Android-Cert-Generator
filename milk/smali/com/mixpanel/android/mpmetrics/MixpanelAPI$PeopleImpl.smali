.class Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 976
    const-class v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 0

    .prologue
    .line 976
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI;
    .param p2, "x1"    # Lcom/mixpanel/android/mpmetrics/MixpanelAPI$1;

    .prologue
    .line 976
    invoke-direct {p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V

    return-void
.end method

.method private showGivenOrAvailableNotification(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V
    .locals 2
    .param p1, "notifOrNull"    # Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .param p2, "parent"    # Landroid/app/Activity;

    .prologue
    .line 1374
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1454
    :goto_0
    return-void

    .line 1378
    :cond_0
    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$4;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showGivenOrAvailableSurvey(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V
    .locals 7
    .param p1, "surveyOrNull"    # Lcom/mixpanel/android/mpmetrics/Survey;
    .param p2, "parent"    # Landroid/app/Activity;

    .prologue
    .line 1323
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1327
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mixpanel/android/mpmetrics/ConfigurationChecker;->checkSurveyActivityAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1331
    const/4 v1, 0x0

    .line 1332
    .local v1, "listener":Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->getLockObject()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    .line 1333
    .local v2, "lock":Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1335
    :try_start_0
    invoke-static {}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->hasCurrentProposal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    .line 1366
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1338
    :cond_2
    move-object v4, p1

    .line 1339
    .local v4, "toShow":Lcom/mixpanel/android/mpmetrics/Survey;
    if-nez v4, :cond_3

    .line 1340
    :try_start_1
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getSurveyIfAvailable()Lcom/mixpanel/android/mpmetrics/Survey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 1342
    :cond_3
    if-nez v4, :cond_4

    .line 1366
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 1346
    :cond_4
    :try_start_2
    new-instance v3, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;

    invoke-direct {v3, v4}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;-><init>(Lcom/mixpanel/android/mpmetrics/Survey;)V

    .line 1349
    .local v3, "surveyDisplay":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;
    invoke-static {v6}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$500(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/mixpanel/android/mpmetrics/UpdateDisplayState;->proposeDisplay(Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1350
    .local v0, "intentId":I
    sget-boolean v5, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_5

    if-gtz v0, :cond_5

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1366
    .end local v0    # "intentId":I
    .end local v1    # "listener":Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;
    .end local v3    # "surveyDisplay":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    .end local v4    # "toShow":Lcom/mixpanel/android/mpmetrics/Survey;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 1352
    .restart local v0    # "intentId":I
    .restart local v1    # "listener":Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;
    .restart local v3    # "surveyDisplay":Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;
    .restart local v4    # "toShow":Lcom/mixpanel/android/mpmetrics/Survey;
    :cond_5
    :try_start_3
    new-instance v1, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$3;

    .end local v1    # "listener":Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;
    invoke-direct {v1, p0, v3, p2, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$3;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;Lcom/mixpanel/android/mpmetrics/UpdateDisplayState$DisplayState$SurveyState;Landroid/app/Activity;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1366
    .restart local v1    # "listener":Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1369
    sget-boolean v5, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->$assertionsDisabled:Z

    if-nez v5, :cond_6

    if-nez v1, :cond_6

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 1370
    :cond_6
    invoke-static {p2, v1}, Lcom/mixpanel/android/mpmetrics/BackgroundCapture;->captureBackground(Landroid/app/Activity;Lcom/mixpanel/android/mpmetrics/BackgroundCapture$OnBackgroundCapturedListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMixpanelUpdatesReceivedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$600(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->addOnMixpanelUpdatesReceivedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;)V

    .line 1298
    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1071
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1072
    .local v2, "properties":Lorg/json/JSONObject;
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1073
    const-string v3, "$append"

    invoke-virtual {p0, v3, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1074
    .local v1, "message":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    .end local v1    # "message":Lorg/json/JSONObject;
    .end local v2    # "properties":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MixpanelAPI"

    const-string v4, "Exception appending a property"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkForSurvey(Lcom/mixpanel/android/mpmetrics/SurveyCallbacks;)V
    .locals 3
    .param p1, "callbacks"    # Lcom/mixpanel/android/mpmetrics/SurveyCallbacks;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1107
    if-nez p1, :cond_0

    .line 1108
    const-string v1, "MixpanelAPI"

    const-string v2, "Skipping survey check because callback is null."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :goto_0
    return-void

    .line 1112
    :cond_0
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getSurveyIfAvailable()Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    .line 1113
    .local v0, "found":Lcom/mixpanel/android/mpmetrics/Survey;
    invoke-interface {p1, v0}, Lcom/mixpanel/android/mpmetrics/SurveyCallbacks;->foundSurvey(Lcom/mixpanel/android/mpmetrics/Survey;)V

    goto :goto_0
.end method

.method public checkForSurvey(Lcom/mixpanel/android/mpmetrics/SurveyCallbacks;Landroid/app/Activity;)V
    .locals 0
    .param p1, "callbacks"    # Lcom/mixpanel/android/mpmetrics/SurveyCallbacks;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1121
    invoke-virtual {p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->checkForSurvey(Lcom/mixpanel/android/mpmetrics/SurveyCallbacks;)V

    .line 1122
    return-void
.end method

.method public clearCharges()V
    .locals 1

    .prologue
    .line 1209
    const-string v0, "$transactions"

    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->unset(Ljava/lang/String;)V

    .line 1210
    return-void
.end method

.method public clearPushRegistrationId()V
    .locals 2

    .prologue
    .line 1237
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$300(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->clearPushId()V

    .line 1238
    const-string v0, "$android_devices"

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1239
    return-void
.end method

.method public deleteUser()V
    .locals 4

    .prologue
    .line 1215
    :try_start_0
    const-string v2, "$delete"

    sget-object v3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1216
    .local v1, "message":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v2, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v1    # "message":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1217
    :catch_0
    move-exception v0

    .line 1218
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MixpanelAPI"

    const-string v3, "Exception deleting a user"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$300(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getPeopleDistinctId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationIfAvailable()Lcom/mixpanel/android/mpmetrics/InAppNotification;
    .locals 2

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1127
    const/4 v0, 0x0

    .line 1129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1100(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getNotification(Z)Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v0

    goto :goto_0
.end method

.method public getSurveyIfAvailable()Lcom/mixpanel/android/mpmetrics/Survey;
    .locals 2

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1135
    const/4 v0, 0x0

    .line 1137
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1100(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getSurvey(Z)Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    goto :goto_0
.end method

.method public identify(Ljava/lang/String;)V
    .locals 4
    .param p1, "distinctId"    # Ljava/lang/String;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$300(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->setPeopleDistinctId(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getDistinctId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->destroy()V

    .line 982
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    const/4 v1, 0x0

    # setter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$402(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/DecideUpdates;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v0

    if-nez v0, :cond_1

    .line 986
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$500(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$600(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->constructDecideUpdates(Ljava/lang/String;Ljava/lang/String;Lcom/mixpanel/android/mpmetrics/DecideUpdates$OnNewResultsListener;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v1

    # setter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$402(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lcom/mixpanel/android/mpmetrics/DecideUpdates;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    .line 987
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mMessages:Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$700(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;

    move-result-object v0

    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mixpanel/android/mpmetrics/AnalyticsMessages;->installDecideCheck(Lcom/mixpanel/android/mpmetrics/DecideUpdates;)V

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->pushWaitingPeopleRecord()V
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$800(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V

    .line 990
    return-void
.end method

.method public increment(Ljava/lang/String;D)V
    .locals 2
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 1063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1064
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    invoke-virtual {p0, v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->increment(Ljava/util/Map;)V

    .line 1066
    return-void
.end method

.method public increment(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Number;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1054
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "$add"

    invoke-virtual {p0, v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1055
    .local v2, "message":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v3, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1059
    .end local v2    # "message":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MixpanelAPI"

    const-string v4, "Exception incrementing properties"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public initPushHandling(Ljava/lang/String;)V
    .locals 8
    .param p1, "senderID"    # Ljava/lang/String;

    .prologue
    .line 1243
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$900(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/ConfigurationChecker;->checkPushConfiguration(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1244
    const-string v3, "MixpanelAPI"

    const-string v4, "Can\'t start push notification service. Push notifications will not work."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    const-string v3, "MixpanelAPI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "See log tagged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/mixpanel/android/mpmetrics/ConfigurationChecker;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " above for details."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    :goto_0
    return-void

    .line 1248
    :cond_0
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$300(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getPushId()Ljava/lang/String;

    move-result-object v1

    .line 1249
    .local v1, "pushId":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 1250
    sget-boolean v3, Lcom/mixpanel/android/mpmetrics/MPConfig;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "MixpanelAPI"

    const-string v4, "Registering a new push id"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    .local v2, "registrationIntent":Landroid/content/Intent;
    const-string v3, "app"

    iget-object v4, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$900(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1255
    const-string v3, "sender"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1256
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$900(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1257
    .end local v2    # "registrationIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 1258
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v3, "MixpanelAPI"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1261
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_2
    new-instance v3, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$1;

    invoke-direct {v3, p0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$1;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->allInstances(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$InstanceProcessor;)V

    goto :goto_0
.end method

.method public removeOnMixpanelUpdatesReceivedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;

    .prologue
    .line 1302
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mUpdatesListener:Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;
    invoke-static {v0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$600(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$UpdatesListener;->removeOnMixpanelUpdatesReceivedListener(Lcom/mixpanel/android/mpmetrics/OnMixpanelUpdatesReceivedListener;)V

    .line 1303
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1025
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->set(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_0
    return-void

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "MixpanelAPI"

    const-string v2, "set"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public set(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 995
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 996
    .local v6, "sendProperties":Lorg/json/JSONObject;
    const-string v7, "$android_lib_version"

    const-string v8, "4.2.1"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 997
    const-string v7, "$android_os"

    const-string v8, "Android"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 998
    const-string v8, "$android_os_version"

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v7, :cond_0

    const-string v7, "UNKNOWN"

    :goto_0
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :try_start_1
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$900(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1001
    .local v4, "manager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$900(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1002
    .local v1, "info":Landroid/content/pm/PackageInfo;
    const-string v7, "$android_app_version"

    iget-object v8, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1006
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    :goto_1
    :try_start_2
    const-string v8, "$android_manufacturer"

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-nez v7, :cond_1

    const-string v7, "UNKNOWN"

    :goto_2
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1007
    const-string v8, "$android_brand"

    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string v7, "UNKNOWN"

    :goto_3
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1008
    const-string v8, "$android_model"

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, "UNKNOWN"

    :goto_4
    invoke-virtual {v6, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1010
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1011
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1012
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 1017
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "sendProperties":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1018
    .local v0, "e":Lorg/json/JSONException;
    const-string v7, "MixpanelAPI"

    const-string v8, "Exception setting people properties"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1020
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6
    return-void

    .line 998
    .restart local v6    # "sendProperties":Lorg/json/JSONObject;
    :cond_0
    :try_start_3
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    goto :goto_0

    .line 1003
    :catch_1
    move-exception v0

    .line 1004
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "MixpanelAPI"

    const-string v8, "Exception getting app version name"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1006
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    goto :goto_2

    .line 1007
    :cond_2
    sget-object v7, Landroid/os/Build;->BRAND:Ljava/lang/String;

    goto :goto_3

    .line 1008
    :cond_3
    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_4

    .line 1015
    .restart local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    const-string v7, "$set"

    invoke-virtual {p0, v7, v6}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1016
    .local v5, "message":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v7, v5}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6
.end method

.method public setOnce(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1044
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->setOnce(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    return-void

    .line 1045
    :catch_0
    move-exception v0

    .line 1046
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "MixpanelAPI"

    const-string v2, "set"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOnce(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 1034
    :try_start_0
    const-string v2, "$set_once"

    invoke-virtual {p0, v2, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1035
    .local v1, "message":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v2, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    .end local v1    # "message":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1036
    :catch_0
    move-exception v0

    .line 1037
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "MixpanelAPI"

    const-string v3, "Exception setting people properties"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPushRegistrationId(Ljava/lang/String;)V
    .locals 5
    .param p1, "registrationId"    # Ljava/lang/String;

    .prologue
    .line 1224
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1233
    :goto_0
    return-void

    .line 1227
    :cond_0
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mPersistentIdentity:Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$300(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->storePushId(Ljava/lang/String;)V

    .line 1229
    :try_start_0
    const-string v1, "$android_devices"

    new-instance v2, Lorg/json/JSONArray;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->union(Ljava/lang/String;Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Lorg/json/JSONException;
    const-string v1, "MixpanelAPI"

    const-string v2, "set push registration id error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public showNotificationById(ILandroid/app/Activity;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "parent"    # Landroid/app/Activity;

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1100(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getNotification(IZ)Lcom/mixpanel/android/mpmetrics/InAppNotification;

    move-result-object v0

    .line 1175
    .local v0, "notif":Lcom/mixpanel/android/mpmetrics/InAppNotification;
    if-eqz v0, :cond_0

    .line 1176
    invoke-direct {p0, v0, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->showGivenOrAvailableNotification(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V

    .line 1178
    :cond_0
    return-void
.end method

.method public showNotificationIfAvailable(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 1165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1170
    :goto_0
    return-void

    .line 1169
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->showGivenOrAvailableNotification(Lcom/mixpanel/android/mpmetrics/InAppNotification;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public showSurvey(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V
    .locals 0
    .param p1, "survey"    # Lcom/mixpanel/android/mpmetrics/Survey;
    .param p2, "parent"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->showGivenOrAvailableSurvey(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    .line 1144
    return-void
.end method

.method public showSurveyById(ILandroid/app/Activity;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "parent"    # Landroid/app/Activity;

    .prologue
    .line 1157
    iget-object v1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mDecideUpdates:Lcom/mixpanel/android/mpmetrics/DecideUpdates;
    invoke-static {v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$400(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/DecideUpdates;

    move-result-object v1

    iget-object v2, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mConfig:Lcom/mixpanel/android/mpmetrics/MPConfig;
    invoke-static {v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1100(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Lcom/mixpanel/android/mpmetrics/MPConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mixpanel/android/mpmetrics/MPConfig;->getTestMode()Z

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/mixpanel/android/mpmetrics/DecideUpdates;->getSurvey(IZ)Lcom/mixpanel/android/mpmetrics/Survey;

    move-result-object v0

    .line 1158
    .local v0, "s":Lcom/mixpanel/android/mpmetrics/Survey;
    if-eqz v0, :cond_0

    .line 1159
    invoke-direct {p0, v0, p2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->showGivenOrAvailableSurvey(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    .line 1161
    :cond_0
    return-void
.end method

.method public showSurveyIfAvailable(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 1148
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 1153
    :goto_0
    return-void

    .line 1152
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->showGivenOrAvailableSurvey(Lcom/mixpanel/android/mpmetrics/Survey;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "actionType"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1307
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1308
    .local v0, "dataObj":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v1

    .line 1310
    .local v1, "distinctId":Ljava/lang/String;
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1311
    const-string v2, "$token"

    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # getter for: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->mToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$500(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1312
    const-string v2, "$time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1314
    if-eqz v1, :cond_0

    .line 1315
    const-string v2, "$distinct_id"

    invoke-virtual {p0}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->getDistinctId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1318
    :cond_0
    return-object v0
.end method

.method public trackCharge(DLorg/json/JSONObject;)V
    .locals 8
    .param p1, "amount"    # D
    .param p3, "properties"    # Lorg/json/JSONObject;

    .prologue
    .line 1182
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 1183
    .local v4, "now":Ljava/util/Date;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v0, "dateFormat":Ljava/text/DateFormat;
    const-string v6, "UTC"

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1187
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 1188
    .local v5, "transactionValue":Lorg/json/JSONObject;
    const-string v6, "$amount"

    invoke-virtual {v5, v6, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1189
    const-string v6, "$time"

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1191
    if-eqz p3, :cond_0

    .line 1192
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1194
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p3, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1199
    .end local v2    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "transactionValue":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 1200
    .local v1, "e":Lorg/json/JSONException;
    const-string v6, "MixpanelAPI"

    const-string v7, "Exception creating new charge"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1202
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_1
    return-void

    .line 1198
    .restart local v5    # "transactionValue":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    const-string v6, "$transactions"

    invoke-virtual {p0, v6, v5}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->append(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public union(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONArray;

    .prologue
    .line 1083
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1084
    .local v2, "properties":Lorg/json/JSONObject;
    invoke-virtual {v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1085
    const-string v3, "$union"

    invoke-virtual {p0, v3, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1086
    .local v1, "message":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1090
    .end local v1    # "message":Lorg/json/JSONObject;
    .end local v2    # "properties":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 1087
    :catch_0
    move-exception v0

    .line 1088
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MixpanelAPI"

    const-string v4, "Exception unioning a property"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unset(Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1095
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1096
    .local v2, "names":Lorg/json/JSONArray;
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1097
    const-string v3, "$unset"

    invoke-virtual {p0, v3, v2}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->stdPeopleMessage(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1098
    .local v1, "message":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    # invokes: Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->recordPeopleMessage(Lorg/json/JSONObject;)V
    invoke-static {v3, v1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$1000(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .end local v1    # "message":Lorg/json/JSONObject;
    .end local v2    # "names":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 1099
    :catch_0
    move-exception v0

    .line 1100
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "MixpanelAPI"

    const-string v4, "Exception unsetting a property"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public withIdentity(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MixpanelAPI$People;
    .locals 1
    .param p1, "distinctId"    # Ljava/lang/String;

    .prologue
    .line 1279
    if-nez p1, :cond_0

    .line 1280
    const/4 v0, 0x0

    .line 1282
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl$2;-><init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI$PeopleImpl;Ljava/lang/String;)V

    goto :goto_0
.end method
