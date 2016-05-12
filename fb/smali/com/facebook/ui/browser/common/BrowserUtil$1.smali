.class final Lcom/facebook/ui/browser/common/BrowserUtil$1;
.super Ljava/lang/Object;
.source "onResponseEnd %d"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/facebook/ui/browser/common/BrowserUtil$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/facebook/ui/browser/common/BrowserUtil$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ui/browser/common/BrowserUtil;->c(Landroid/content/Context;)V

    .line 56
    return-void
.end method
