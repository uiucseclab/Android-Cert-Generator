.class public Lcom/samsung/milk/milkvideo/views/FullScreenDialog;
.super Landroid/app/Dialog;
.source "FullScreenDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;,
        Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;
    }
.end annotation


# direct methods
.method private constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 14
    return-void
.end method

.method public static createCloseVideoDialog(Landroid/content/Context;Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;)Lcom/samsung/milk/milkvideo/views/FullScreenDialog;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onVideoCloseListener"    # Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;
    .param p2, "onVideoCloseCancelListener"    # Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;

    .prologue
    .line 17
    new-instance v2, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    const v3, 0x7f0a000a

    invoke-direct {v2, p0, v3}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 19
    .local v2, "videoCloseDialog":Lcom/samsung/milk/milkvideo/views/FullScreenDialog;
    new-instance v1, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$1;

    invoke-direct {v1, p1, v2}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$1;-><init>(Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;Lcom/samsung/milk/milkvideo/views/FullScreenDialog;)V

    .line 29
    .local v1, "positiveListener":Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;

    invoke-direct {v0, p2, v2}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;-><init>(Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;Lcom/samsung/milk/milkvideo/views/FullScreenDialog;)V

    .line 39
    .local v0, "negativeListener":Landroid/view/View$OnClickListener;
    invoke-static {v2, v1, v0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->setUpDialog(Lcom/samsung/milk/milkvideo/views/FullScreenDialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 40
    const v3, 0x7f060075

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080078

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f080079

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    return-object v2
.end method

.method private static setUpDialog(Lcom/samsung/milk/milkvideo/views/FullScreenDialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p0, "fullScreenDialog"    # Lcom/samsung/milk/milkvideo/views/FullScreenDialog;
    .param p1, "positiveListener"    # Landroid/view/View$OnClickListener;
    .param p2, "negativeListener"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v3, -0x1

    .line 47
    const v2, 0x7f03002c

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 50
    const v2, 0x7f060075

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 51
    .local v1, "repostButton":Landroid/widget/Button;
    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v2, 0x7f060076

    invoke-virtual {p0, v2}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "cancelButton":Landroid/widget/Button;
    if-nez p2, :cond_0

    .line 55
    new-instance v2, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$3;

    invoke-direct {v2, p0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$3;-><init>(Lcom/samsung/milk/milkvideo/views/FullScreenDialog;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
