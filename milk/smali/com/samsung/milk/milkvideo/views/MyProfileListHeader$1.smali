.class Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$1;
.super Ljava/lang/Object;
.source "MyProfileListHeader.java"

# interfaces
.implements Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$OnTabClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$1;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRepostsButtonClicked()V
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$1;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->REPOSTS:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public onStarredButtonClicked()V
    .locals 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader$1;->this$0:Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;

    iget-object v0, v0, Lcom/samsung/milk/milkvideo/views/MyProfileListHeader;->eventBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;

    sget-object v2, Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;->STARRED:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    invoke-direct {v1, v2}, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;-><init>(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->post(Ljava/lang/Object;)V

    .line 66
    return-void
.end method
