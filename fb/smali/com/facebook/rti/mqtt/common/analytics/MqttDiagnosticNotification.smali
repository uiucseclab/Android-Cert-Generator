.class public Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;
.super Ljava/lang/Object;
.source "spherical_aspect_ratio"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I

.field private final d:Landroid/content/Context;

.field private final e:Landroid/app/NotificationManager;

.field private final f:Landroid/content/SharedPreferences;

.field private final g:Ljava/lang/String;

.field private h:Landroid/app/Notification$Builder;

.field private i:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->j:Ljava/lang/String;

    .line 42
    iput v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->k:I

    .line 46
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v0, v2, :cond_0

    .line 47
    iput-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    .line 48
    iput-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->e:Landroid/app/NotificationManager;

    .line 49
    iput-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b:Ljava/lang/String;

    .line 50
    iput v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c:I

    .line 51
    iput-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->f:Landroid/content/SharedPreferences;

    .line 52
    iput-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->g:Ljava/lang/String;

    .line 76
    :goto_0
    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    .line 57
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->e:Landroid/app/NotificationManager;

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 68
    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c:I

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Service "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "M/d h:mm a"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->g:Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->i:Ljava/util/Queue;

    .line 73
    const-string v0, "mqtt_debug"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->f:Landroid/content/SharedPreferences;

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 68
    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private a()Landroid/app/Notification$InboxStyle;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 156
    new-instance v0, Landroid/app/Notification$InboxStyle;

    invoke-direct {v0}, Landroid/app/Notification$InboxStyle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " MqttLite"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v1

    .line 159
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->i:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 160
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    .line 163
    :cond_0
    return-object v1
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "h:mm:ss a"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->f:Landroid/content/SharedPreferences;

    const-string v1, "is_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private d()I
    .locals 4

    .prologue
    .line 176
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    .line 177
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 179
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 180
    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_0

    .line 181
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 188
    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/16 v0, 0x2a

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const v3, 0x1080068

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 125
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->e:Landroid/app/NotificationManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0

    .line 95
    :cond_1
    iput v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->k:I

    .line 96
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->j:Ljava/lang/String;

    .line 99
    const/16 v0, 0xbb8

    .line 101
    const-string v1, "CONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    const v1, 0x108006b

    move v3, v1

    move v1, v2

    .line 112
    :goto_1
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->d:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-static {v4, v2, v5, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MqttLite"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v1, v0, v4}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a()Landroid/app/Notification$InboxStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->e:Landroid/app/NotificationManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c:I

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 124
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    const-string v1, "notify %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v2

    invoke-static {v0, v1, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 103
    :cond_3
    const-string v1, "CONNECTING"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 104
    const v3, 0x1080067

    .line 105
    const/16 v1, -0x100

    goto :goto_1

    .line 106
    :cond_4
    const-string v1, "DISCONNECTED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 108
    const/high16 v1, -0x10000

    .line 109
    const/16 v0, 0x7d0

    goto/16 :goto_1

    .line 92
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_5
    move v1, v2

    goto/16 :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->e:Landroid/app/NotificationManager;

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    iget v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_0

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    iget v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->k:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->i:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_3

    .line 146
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->i:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 149
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a()Landroid/app/Notification$InboxStyle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 150
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->e:Landroid/app/NotificationManager;

    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    iget v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->c:I

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->h:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 151
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttDiagnosticNotification;->a:Ljava/lang/String;

    const-string v2, "notify %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/rti/common/log/BLog;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
