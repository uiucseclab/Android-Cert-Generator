.class public Lcom/facebook/rti/mqtt/common/config/UserAgent;
.super Ljava/lang/Object;
.source "socket"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->b:Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

    .line 40
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->c:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 104
    .line 149
    if-eqz p1, :cond_3

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 152
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 153
    const/16 v6, 0x26

    if-ne v5, v6, :cond_0

    .line 154
    const-string v5, "&amp;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    :cond_0
    const/16 v6, 0x20

    if-lt v5, v6, :cond_1

    const/16 v6, 0x7e

    if-gt v5, v6, :cond_1

    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 158
    :cond_1
    const-string v6, "&#"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 165
    :goto_2
    move-object v0, v3

    .line 105
    const-string v1, "/"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    const-string v3, ""

    goto :goto_2
.end method

.method private static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 119
    new-instance v2, Landroid/graphics/Point;

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v0, v3, :cond_0

    .line 121
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 122
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 123
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "{density="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 133
    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;"

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FBAN"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->c:Ljava/lang/String;

    aput-object v3, v2, v6

    const-string v3, "FBAV"

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->b:Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->a()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "FBBV"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->b:Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FBDM"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "FBLC"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->g()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;%s/%s;"

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "FBCR"

    aput-object v3, v2, v5

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "FBMF"

    aput-object v3, v2, v7

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const-string v3, "FBBD"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FBPN"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "FBDV"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    invoke-static {}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "FBSV"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "%s/%s;"

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "FBBK"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "%s/%s:%s;"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "FBCA"

    aput-object v3, v2, v5

    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    sget-object v3, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/common/config/UserAgent;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v1, "%s/%s;%s/%s;"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "FBAN"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->c:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "FBAV"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/config/UserAgent;->b:Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;

    invoke-virtual {v4}, Lcom/facebook/rti/mqtt/common/config/MqttBuildInfoUtil;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/rti/common/util/StringUtil;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
