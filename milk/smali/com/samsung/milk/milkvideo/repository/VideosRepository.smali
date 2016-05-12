.class public abstract Lcom/samsung/milk/milkvideo/repository/VideosRepository;
.super Ljava/lang/Object;
.source "VideosRepository.java"


# instance fields
.field protected final eventBus:Lcom/squareup/otto/Bus;

.field protected final nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/api/NachosRestService;Lcom/squareup/otto/Bus;)V
    .locals 0
    .param p1, "nachosRestService"    # Lcom/samsung/milk/milkvideo/api/NachosRestService;
    .param p2, "eventBus"    # Lcom/squareup/otto/Bus;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/repository/VideosRepository;->nachosRestService:Lcom/samsung/milk/milkvideo/api/NachosRestService;

    .line 12
    iput-object p2, p0, Lcom/samsung/milk/milkvideo/repository/VideosRepository;->eventBus:Lcom/squareup/otto/Bus;

    .line 13
    return-void
.end method
