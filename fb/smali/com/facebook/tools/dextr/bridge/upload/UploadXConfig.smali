.class public Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;
.super Lcom/facebook/xconfig/core/XConfig;
.source "snapshot_mqtt_network_type"


# static fields
.field public static final c:Lcom/facebook/xconfig/core/XConfigName;

.field public static final d:Lcom/facebook/xconfig/core/XConfigSetting;

.field public static final e:Lcom/facebook/xconfig/core/XConfigSetting;

.field public static final f:Lcom/facebook/xconfig/core/XConfigSetting;

.field public static final g:Lcom/facebook/xconfig/core/XConfigSetting;

.field public static final h:Lcom/facebook/xconfig/core/XConfigSetting;

.field private static final i:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/xconfig/core/XConfigSetting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 18
    new-instance v0, Lcom/facebook/xconfig/core/XConfigName;

    const-string v1, "dextr_upload_config"

    invoke-direct {v0, v1}, Lcom/facebook/xconfig/core/XConfigName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    .line 20
    new-instance v0, Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    const-string v2, "bytes_upper_limit"

    invoke-direct {v0, v1, v2}, Lcom/facebook/xconfig/core/XConfigSetting;-><init>(Lcom/facebook/xconfig/core/XConfigName;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->d:Lcom/facebook/xconfig/core/XConfigSetting;

    .line 22
    new-instance v0, Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    const-string v2, "bytes_per_update"

    invoke-direct {v0, v1, v2}, Lcom/facebook/xconfig/core/XConfigSetting;-><init>(Lcom/facebook/xconfig/core/XConfigName;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->e:Lcom/facebook/xconfig/core/XConfigSetting;

    .line 24
    new-instance v0, Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    const-string v2, "seconds_between_updates"

    invoke-direct {v0, v1, v2}, Lcom/facebook/xconfig/core/XConfigSetting;-><init>(Lcom/facebook/xconfig/core/XConfigName;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->f:Lcom/facebook/xconfig/core/XConfigSetting;

    .line 26
    new-instance v0, Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    const-string v2, "num_retained_traces"

    invoke-direct {v0, v1, v2}, Lcom/facebook/xconfig/core/XConfigSetting;-><init>(Lcom/facebook/xconfig/core/XConfigName;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->g:Lcom/facebook/xconfig/core/XConfigSetting;

    .line 28
    new-instance v0, Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    const-string v2, "max_scheduled_traces_age_sec"

    invoke-direct {v0, v1, v2}, Lcom/facebook/xconfig/core/XConfigSetting;-><init>(Lcom/facebook/xconfig/core/XConfigName;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->h:Lcom/facebook/xconfig/core/XConfigSetting;

    .line 31
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->d:Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->e:Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v2, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->f:Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v3, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->g:Lcom/facebook/xconfig/core/XConfigSetting;

    sget-object v4, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->h:Lcom/facebook/xconfig/core/XConfigSetting;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->i:Lcom/google/common/collect/ImmutableSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->c:Lcom/facebook/xconfig/core/XConfigName;

    sget-object v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;->i:Lcom/google/common/collect/ImmutableSet;

    invoke-direct {p0, v0, v1}, Lcom/facebook/xconfig/core/XConfig;-><init>(Lcom/facebook/xconfig/core/XConfigName;Lcom/google/common/collect/ImmutableSet;)V

    .line 41
    return-void
.end method

.method public static a(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;
    .locals 2

    .prologue
    .line 33
    .line 16
    new-instance v1, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;

    invoke-direct {v1}, Lcom/facebook/tools/dextr/bridge/upload/UploadXConfig;-><init>()V

    .line 17
    move-object v0, v1

    return-object v0
.end method
