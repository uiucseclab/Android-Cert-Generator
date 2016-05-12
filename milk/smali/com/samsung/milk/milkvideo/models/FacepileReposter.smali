.class public Lcom/samsung/milk/milkvideo/models/FacepileReposter;
.super Ljava/lang/Object;
.source "FacepileReposter.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# instance fields
.field private imageUrl:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "image_url"
    .end annotation
.end field

.field private username:Ljava/lang/String;

.field private uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "imageUrl"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/samsung/milk/milkvideo/models/FacepileReposter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->uuid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->imageUrl:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->username:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->username:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/FacepileReposter;->uuid:Ljava/lang/String;

    .line 44
    return-void
.end method
