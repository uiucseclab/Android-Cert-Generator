.class public Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;
.super Ljava/lang/Object;
.source "ValidAttributeResponseBody.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;->valid:Z

    return v0
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/samsung/milk/milkvideo/api/ValidAttributeResponseBody;->valid:Z

    .line 16
    return-void
.end method
