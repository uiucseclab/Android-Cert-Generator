.class Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$2;
.super Ljava/lang/Object;
.source "GooglePlusLoginStrategy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->getGoogleErrorDialog(Landroid/app/Activity;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 100
    const-string v0, "Google Play services resolution cancelled"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy$2;->this$0:Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;

    # invokes: Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->resetGoogleLogin()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;->access$200(Lcom/samsung/milk/milkvideo/login/GooglePlusLoginStrategy;)V

    .line 102
    return-void
.end method
