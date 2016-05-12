.class Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;
.super Ljava/lang/Object;
.source "NuxView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/views/NuxView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DotUpdatePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/NuxView;


# direct methods
.method private constructor <init>(Lcom/samsung/milk/milkvideo/views/NuxView;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/milk/milkvideo/views/NuxView;Lcom/samsung/milk/milkvideo/views/NuxView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/milk/milkvideo/views/NuxView;
    .param p2, "x1"    # Lcom/samsung/milk/milkvideo/views/NuxView$1;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;-><init>(Lcom/samsung/milk/milkvideo/views/NuxView;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 110
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 84
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 88
    packed-switch p1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    # getter for: Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->access$200(Lcom/samsung/milk/milkvideo/views/NuxView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    # getter for: Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->access$200(Lcom/samsung/milk/milkvideo/views/NuxView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200bc

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    # getter for: Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->access$200(Lcom/samsung/milk/milkvideo/views/NuxView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 99
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    # getter for: Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->access$200(Lcom/samsung/milk/milkvideo/views/NuxView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 102
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/NuxView$DotUpdatePageChangeListener;->this$0:Lcom/samsung/milk/milkvideo/views/NuxView;

    # getter for: Lcom/samsung/milk/milkvideo/views/NuxView;->nuxDots:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/NuxView;->access$200(Lcom/samsung/milk/milkvideo/views/NuxView;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
