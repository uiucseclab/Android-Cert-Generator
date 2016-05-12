.class public Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;
.super Ljava/lang/Object;
.source "VideoUnrepostedEvent.java"


# instance fields
.field private embedCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "embedCode"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;->embedCode:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;->embedCode:Ljava/lang/String;

    return-object v0
.end method

.method public setEmbedCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "embedCode"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/VideoUnrepostedEvent;->embedCode:Ljava/lang/String;

    .line 16
    return-void
.end method
