.class Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2;
.super Ljava/lang/Object;
.source "CardCarouselLayout.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

.field final synthetic val$this$0:Lcom/mixpanel/android/surveys/CardCarouselLayout;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;Lcom/mixpanel/android/surveys/CardCarouselLayout;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2;->this$1:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    iput-object p2, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2;->val$this$0:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2;->this$1:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    iget-object v1, v1, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->this$0:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    # getter for: Lcom/mixpanel/android/surveys/CardCarouselLayout;->mListener:Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;
    invoke-static {v1}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->access$000(Lcom/mixpanel/android/surveys/CardCarouselLayout;)Lcom/mixpanel/android/surveys/CardCarouselLayout$OnQuestionAnsweredListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "answer":Ljava/lang/String;
    iget-object v1, p0, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2;->this$1:Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;

    iget-object v1, v1, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard;->this$0:Lcom/mixpanel/android/surveys/CardCarouselLayout;

    new-instance v2, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2$1;

    invoke-direct {v2, p0, v0}, Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2$1;-><init>(Lcom/mixpanel/android/surveys/CardCarouselLayout$QuestionCard$2;Ljava/lang/String;)V

    const-wide/16 v3, 0xa5

    invoke-virtual {v1, v2, v3, v4}, Lcom/mixpanel/android/surveys/CardCarouselLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 478
    .end local v0    # "answer":Ljava/lang/String;
    :cond_0
    return-void
.end method
