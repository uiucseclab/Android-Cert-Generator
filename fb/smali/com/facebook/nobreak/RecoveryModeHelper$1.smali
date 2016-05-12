.class Lcom/facebook/nobreak/RecoveryModeHelper$1;
.super Ljava/lang/Thread;
.source "writing raw dex file %s"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Lcom/facebook/nobreak/RecoveryModeHelper;


# direct methods
.method constructor <init>(Lcom/facebook/nobreak/RecoveryModeHelper;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->d:Lcom/facebook/nobreak/RecoveryModeHelper;

    iput-object p2, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->b:Landroid/os/Handler;

    iput-object p4, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-java.util.ArrayList._Constructor"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    iget-object v1, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->d:Lcom/facebook/nobreak/RecoveryModeHelper;

    iget-object v2, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->a:Landroid/content/Context;

    .line 29
    invoke-static {v2}, Lcom/facebook/nobreak/RecoveryModeHelper;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/facebook/nobreak/NobreakUtils;->a(Landroid/content/Context;Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/facebook/nobreak/RecoveryModeHelper$1;->c:Ljava/lang/Runnable;

    const v2, 0x6f0ae8b6

    invoke-static {v0, v1, v2}, Lcom/facebook/tools/dextr/runtime/detour/HandlerDetour;->a(Landroid/os/Handler;Ljava/lang/Runnable;I)Z

    .line 146
    return-void
.end method
