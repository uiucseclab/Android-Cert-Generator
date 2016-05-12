.class public Lcom/samsung/milk/milkvideo/models/Category;
.super Ljava/lang/Object;
.source "Category.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation

.annotation runtime Lcom/fasterxml/jackson/annotation/JsonInclude;
    value = .enum Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.end annotation


# static fields
.field public static final FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

.field public static final FOLLOWING_INDEX:I = 0x1

.field public static final INVALID_INDEX:I = -0x1

.field public static final POPULAR:Lcom/samsung/milk/milkvideo/models/Category;

.field public static final SEARCH:Lcom/samsung/milk/milkvideo/models/Category;

.field public static final SEARCH_INDEX:I


# instance fields
.field private featured:Z

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/samsung/milk/milkvideo/models/Category;

    const-string v1, "Search"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/models/Category;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/milk/milkvideo/models/Category;->SEARCH:Lcom/samsung/milk/milkvideo/models/Category;

    .line 9
    new-instance v0, Lcom/samsung/milk/milkvideo/models/Category;

    const-string v1, "Following"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/models/Category;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/milk/milkvideo/models/Category;->FOLLOWING:Lcom/samsung/milk/milkvideo/models/Category;

    .line 10
    new-instance v0, Lcom/samsung/milk/milkvideo/models/Category;

    const-string v1, "Popular"

    invoke-direct {v0, v1, v2}, Lcom/samsung/milk/milkvideo/models/Category;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/samsung/milk/milkvideo/models/Category;->POPULAR:Lcom/samsung/milk/milkvideo/models/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Category;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "featured"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/models/Category;->name:Ljava/lang/String;

    .line 28
    iput-boolean p2, p0, Lcom/samsung/milk/milkvideo/models/Category;->featured:Z

    .line 29
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 41
    instance-of v2, p1, Lcom/samsung/milk/milkvideo/models/Category;

    if-eqz v2, :cond_0

    .line 42
    check-cast p1, Lcom/samsung/milk/milkvideo/models/Category;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/milk/milkvideo/models/Category;->getName()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "categoryName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Category;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/milk/milkvideo/models/Category;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 45
    .end local v0    # "categoryName":Ljava/lang/String;
    :cond_0
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/models/Category;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isFeatured()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/samsung/milk/milkvideo/models/Category;->featured:Z

    return v0
.end method
