.class public interface abstract Lcom/samsung/milk/milkvideo/notifications/GcmProvider;
.super Ljava/lang/Object;
.source "GcmProvider.java"


# virtual methods
.method public abstract checkPlayServices(Landroid/content/Context;)Z
.end method

.method public abstract getMessageType(Landroid/content/Intent;)Ljava/lang/String;
.end method

.method public abstract isDeletedMessage(Ljava/lang/String;)Z
.end method

.method public abstract isErrorMessage(Ljava/lang/String;)Z
.end method

.method public abstract isValidMessage(Ljava/lang/String;)Z
.end method

.method public abstract register(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
