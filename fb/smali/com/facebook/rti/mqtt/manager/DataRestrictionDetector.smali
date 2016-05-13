.class public Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;
.super Ljava/lang/Object;
.source "sk"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field private final b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final c:Landroid/os/PowerManager;

.field private final d:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

.field private final e:Z

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Landroid/os/PowerManager;Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;Z)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->g:Z

    .line 55
    iput-object p1, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->a:Landroid/content/SharedPreferences;

    .line 56
    iput-object p2, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 57
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->c:Landroid/os/PowerManager;

    .line 58
    iput-object p4, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    .line 59
    iput-boolean p5, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->e:Z

    .line 60
    return-void
.end method

.method private b()Z
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->c:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 8

    .prologue
    const/16 v7, 0x31

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 158
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->a:Landroid/content/SharedPreferences;

    const-string v1, "publish_result_history"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "([01][01])*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    const-string v0, ""

    :cond_0
    move v1, v2

    .line 162
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_3

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v7, :cond_1

    move v3, v4

    .line 164
    :goto_1
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v7, :cond_2

    move v5, v4

    .line 165
    :goto_2
    new-instance v6, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;

    invoke-direct {v6, p0, v3, v5}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;-><init>(Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;ZZ)V

    .line 166
    iget-object v3, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    move v3, v2

    .line 163
    goto :goto_1

    :cond_2
    move v5, v2

    .line 164
    goto :goto_2

    .line 168
    :cond_3
    iput-boolean v4, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->g:Z

    .line 169
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;
    .locals 11

    .prologue
    const/16 v10, 0xa

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v0, 0x0

    .line 100
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->e:Z

    if-nez v1, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    .line 153
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->g:Z

    if-nez v1, :cond_1

    .line 105
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->c()V

    .line 108
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_2

    .line 109
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v0

    move v2, v0

    move v3, v0

    move v4, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;

    .line 117
    iget-boolean v6, v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->a:Z

    if-eqz v6, :cond_3

    .line 118
    add-int/lit8 v4, v4, 0x1

    .line 119
    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->b:Z

    if-eqz v0, :cond_a

    .line 120
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 123
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 124
    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->b:Z

    if-eqz v0, :cond_a

    .line 125
    add-int/lit8 v1, v1, 0x1

    move v0, v1

    move v1, v3

    move v3, v4

    :goto_2
    move v4, v3

    move v3, v1

    move v1, v0

    .line 128
    goto :goto_1

    .line 130
    :cond_4
    if-ge v3, v10, :cond_5

    .line 131
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    .line 134
    :cond_5
    int-to-double v0, v1

    mul-double/2addr v0, v8

    int-to-double v6, v3

    div-double/2addr v0, v6

    .line 135
    const-wide v6, 0x3fc70a3d70a3d70aL    # 0.18

    cmpl-double v3, v0, v6

    if-lez v3, :cond_6

    .line 136
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->NO:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    .line 139
    :cond_6
    if-ge v4, v10, :cond_7

    .line 140
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    .line 143
    :cond_7
    int-to-double v2, v2

    mul-double/2addr v2, v8

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 144
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v2, v4

    if-gez v4, :cond_8

    .line 145
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    .line 148
    :cond_8
    div-double v0, v2, v0

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    .line 150
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->YES:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    .line 153
    :cond_9
    sget-object v0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;->UNSURE:Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$BackgroundDataRestriction;

    goto :goto_0

    :cond_a
    move v0, v1

    move v1, v3

    move v3, v4

    goto :goto_2
.end method

.method public final a(ZZ)V
    .locals 8

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->e:Z

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->g:Z

    if-nez v0, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->c()V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->b:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->d:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;->a()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->c:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    .line 86
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;-><init>(Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    .line 88
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 91
    :cond_4
    const/16 v4, 0x31

    const/16 v5, 0x30

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;

    .line 174
    iget-boolean v3, v2, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->a:Z

    if-eqz v3, :cond_5

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, v2, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector$PublishResult;->b:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    move v2, v5

    goto :goto_3

    .line 177
    :cond_7
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/DataRestrictionDetector;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "publish_result_history"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesCompatHelper;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 179
    goto/16 :goto_0
.end method
