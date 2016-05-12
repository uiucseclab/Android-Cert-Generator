.class Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;
.super Ljava/lang/Object;
.source "MyProfileVideoTabs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    # getter for: Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->currentTab:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->access$000(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    move-result-object v0

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    if-eq v0, v1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    sget-object v1, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-virtual {v0, v1}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->setCurrentTab(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    .line 82
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    # getter for: Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->listener:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->access$100(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$2;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;

    # getter for: Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->listener:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;
    invoke-static {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;->access$100(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs;)Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;->onStarredButtonClicked()V

    .line 86
    :cond_0
    return-void
.end method
