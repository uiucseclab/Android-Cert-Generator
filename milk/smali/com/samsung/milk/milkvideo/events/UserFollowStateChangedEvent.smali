.class public Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;
.super Ljava/lang/Object;
.source "UserFollowStateChangedEvent.java"


# instance fields
.field private user:Lcom/samsung/milk/milkvideo/models/User;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/models/User;)V
    .locals 0
    .param p1, "user"    # Lcom/samsung/milk/milkvideo/models/User;

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;->user:Lcom/samsung/milk/milkvideo/models/User;

    .line 9
    return-void
.end method


# virtual methods
.method public getUser()Lcom/samsung/milk/milkvideo/models/User;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/UserFollowStateChangedEvent;->user:Lcom/samsung/milk/milkvideo/models/User;

    return-object v0
.end method
