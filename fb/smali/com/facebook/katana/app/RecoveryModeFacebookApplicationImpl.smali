.class public Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;
.super Lcom/facebook/base/app/ApplicationLike;
.source "was_playing_"


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lcom/facebook/nobreak/RecoveryModeHelper;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/facebook/nobreak/RecoveryModeHelper;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/facebook/base/app/ApplicationLike;-><init>()V

    .line 22
    new-instance v0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl$1;-><init>(Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;)V

    iput-object v0, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->c:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->a:Landroid/app/Application;

    .line 36
    iput-object p2, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->b:Lcom/facebook/nobreak/RecoveryModeHelper;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->b:Lcom/facebook/nobreak/RecoveryModeHelper;

    iget-object v1, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->a:Landroid/app/Application;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/facebook/katana/app/RecoveryModeFacebookApplicationImpl;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/nobreak/RecoveryModeHelper;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 46
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method
