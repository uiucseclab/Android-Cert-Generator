.class public Lcom/handmark/pulltorefresh/library/internal/Assert;
.super Ljava/lang/Object;
.source "Assert.java"


# static fields
.field private static final MESSAGE_FORMAT:Ljava/lang/String; = "\"%s\" argument must be not null."


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static notNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "argName"    # Ljava/lang/String;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\"%s\" argument must be not null."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method
