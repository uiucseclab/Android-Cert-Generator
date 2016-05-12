.class Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper$1;
.super Ljava/lang/Object;
.source "ScreenResizeHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper$1;->this$0:Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper$1;->this$0:Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;

    # invokes: Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->resizeContentView()V
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;->access$000(Lcom/samsung/milk/milkvideo/utils/ScreenResizeHelper;)V

    .line 32
    return-void
.end method
