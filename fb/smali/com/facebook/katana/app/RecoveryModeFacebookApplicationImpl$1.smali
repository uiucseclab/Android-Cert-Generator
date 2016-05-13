.class Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl$1;
.super Ljava/lang/Object;
.source "was_playing_"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl$1;->a:Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl$1;->a:Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;

    iget-object v0, v0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->b:Lcom/facebook/nobreak/RecoveryModeHelper;

    iget-object v1, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl$1;->a:Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;

    iget-object v1, v1, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->a:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/facebook/nobreak/RecoveryModeHelper;->b(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/facebook/nobreak/RecoveryModeHelper;->b()V

    .line 29
    return-void
.end method
