.class public final enum Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;
.super Ljava/lang/Enum;
.source "user_setting_failed_360_sensor_requirement"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

.field public static final enum Ping:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

.field public static final enum WaitForInit:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

.field public static final enum WaitForInjector:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    const-string v1, "Ping"

    invoke-direct {v0, v1, v2}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->Ping:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    .line 50
    new-instance v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    const-string v1, "WaitForInjector"

    invoke-direct {v0, v1, v3}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->WaitForInjector:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    .line 51
    new-instance v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    const-string v1, "WaitForInit"

    invoke-direct {v0, v1, v4}, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->WaitForInit:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    sget-object v1, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->Ping:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->WaitForInjector:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->WaitForInit:Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->$VALUES:[Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    return-object v0
.end method

.method public static values()[Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->$VALUES:[Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    invoke-virtual {v0}, [Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/nodex/startup/warmup/NodexWarmupContentProvider$Action;

    return-object v0
.end method
