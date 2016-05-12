.class public Lcom/facebook/common/process/PrivateProcessName;
.super Ljava/lang/Object;
.source "video_player_service_unavailable"


# static fields
.field public static final a:Lcom/facebook/common/process/PrivateProcessName;


# instance fields
.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/facebook/common/process/PrivateProcessName;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/facebook/common/process/PrivateProcessName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/common/process/PrivateProcessName;->a:Lcom/facebook/common/process/PrivateProcessName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/common/process/PrivateProcessName;
    .locals 2

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_0
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/facebook/common/process/PrivateProcessName;->a:Lcom/facebook/common/process/PrivateProcessName;

    .line 38
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/facebook/common/process/PrivateProcessName;

    invoke-direct {v0, p0}, Lcom/facebook/common/process/PrivateProcessName;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/facebook/common/process/PrivateProcessName;->a:Lcom/facebook/common/process/PrivateProcessName;

    invoke-virtual {v0, p0}, Lcom/facebook/common/process/PrivateProcessName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    const-string v0, ""

    iget-object v1, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "___DEFAULT___"

    .line 71
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 80
    :cond_3
    check-cast p1, Lcom/facebook/common/process/PrivateProcessName;

    .line 82
    iget-object v2, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/common/process/PrivateProcessName;->b:Ljava/lang/String;

    return-object v0
.end method
