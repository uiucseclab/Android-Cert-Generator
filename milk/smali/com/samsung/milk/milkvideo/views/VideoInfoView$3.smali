.class Lcom/samsung/milk/milkvideo/views/VideoInfoView$3;
.super Ljava/lang/Object;
.source "VideoInfoView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/VideoInfoView;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/VideoInfoView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/VideoInfoView$3;->this$0:Lcom/samsung/milk/milkvideo/views/VideoInfoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method
