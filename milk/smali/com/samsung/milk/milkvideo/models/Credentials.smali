.class public Lcom/samsung/milk/milkvideo/models/Credentials;
.super Ljava/lang/Object;
.source "Credentials.java"


# instance fields
.field private password:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Credentials;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Credentials;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Credentials;->password:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Credentials;->username:Ljava/lang/String;

    .line 13
    return-void
.end method
