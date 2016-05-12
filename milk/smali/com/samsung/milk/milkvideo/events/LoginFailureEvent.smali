.class public Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;
.super Ljava/lang/Object;
.source "LoginFailureEvent.java"


# instance fields
.field private shouldToast:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "shouldToast"    # Z

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;->shouldToast:Z

    .line 11
    return-void
.end method


# virtual methods
.method public shouldToast()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/events/LoginFailureEvent;->shouldToast:Z

    return v0
.end method
