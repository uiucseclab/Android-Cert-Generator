.class Lcom/facebook/browser/lite/BrowserLiteActivity$3;
.super Ljava/lang/Object;
.source "quick"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic a:Lcom/facebook/browser/lite/BrowserLiteActivity;


# direct methods
.method constructor <init>(Lcom/facebook/browser/lite/BrowserLiteActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/facebook/browser/lite/BrowserLiteActivity$3;->a:Lcom/facebook/browser/lite/BrowserLiteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/facebook/browser/lite/BrowserLiteActivity$3;->a:Lcom/facebook/browser/lite/BrowserLiteActivity;

    iget-object v0, v0, Lcom/facebook/browser/lite/BrowserLiteActivity;->a:Lcom/facebook/browser/lite/BrowserLiteFragment;

    invoke-virtual {v0}, Lcom/facebook/browser/lite/BrowserLiteFragment;->b()V

    .line 221
    const/4 v0, 0x1

    return v0
.end method
