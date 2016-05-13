.class public final enum Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;
.super Ljava/lang/Enum;
.source "pa"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

.field public static final enum APP_SETTINGS:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

.field public static final enum NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

.field public static final enum UNINSTALL:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;


# instance fields
.field public final resIdButtonText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    const-string v1, "UNINSTALL"

    const-string v2, "nodex_uninstall_string"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->UNINSTALL:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 45
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    const-string v1, "APP_SETTINGS"

    const-string v2, "nodex_app_settings_string"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->APP_SETTINGS:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 46
    new-instance v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->UNINSTALL:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->APP_SETTINGS:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->NONE:Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->$VALUES:[Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->resIdButtonText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    return-object v0
.end method

.method public static values()[Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->$VALUES:[Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    invoke-virtual {v0}, [Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/nodex/startup/splashscreen/NodexErrorActivity$Action;

    return-object v0
.end method
