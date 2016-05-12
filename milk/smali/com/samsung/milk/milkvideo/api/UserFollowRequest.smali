.class public Lcom/samsung/milk/milkvideo/api/UserFollowRequest;
.super Ljava/lang/Object;
.source "UserFollowRequest.java"


# instance fields
.field private userToFollow:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user_to_follow_id"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserToFollow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;->userToFollow:Ljava/lang/String;

    return-object v0
.end method

.method public setUserToFollow(Ljava/lang/String;)V
    .locals 0
    .param p1, "userToFollow"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/api/UserFollowRequest;->userToFollow:Ljava/lang/String;

    .line 15
    return-void
.end method
