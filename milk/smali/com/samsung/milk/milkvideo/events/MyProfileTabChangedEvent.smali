.class public Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;
.super Ljava/lang/Object;
.source "MyProfileTabChangedEvent.java"


# instance fields
.field private type:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;)V
    .locals 0
    .param p1, "type"    # Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;->type:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    .line 10
    return-void
.end method


# virtual methods
.method public getType()Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/MyProfileTabChangedEvent;->type:Lcom/samsung/milk/milkvideo/views/MyProfileVideoTabs$Tab;

    return-object v0
.end method
