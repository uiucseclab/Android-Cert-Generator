.class final Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;
.super Ljava/lang/Object;
.source "FullScreenDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->createCloseVideoDialog(Landroid/content/Context;Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseListener;Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;)Lcom/samsung/milk/milkvideo/views/FullScreenDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onVideoCloseCancelListener:Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;

.field final synthetic val$videoCloseDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;Lcom/samsung/milk/milkvideo/views/FullScreenDialog;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;->val$onVideoCloseCancelListener:Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;

    iput-object p2, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;->val$videoCloseDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;->val$onVideoCloseCancelListener:Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;->val$onVideoCloseCancelListener:Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$OnVideoCloseCancelListener;->onVideoCloseCancel()V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/FullScreenDialog$2;->val$videoCloseDialog:Lcom/samsung/milk/milkvideo/views/FullScreenDialog;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/FullScreenDialog;->dismiss()V

    .line 36
    return-void
.end method
