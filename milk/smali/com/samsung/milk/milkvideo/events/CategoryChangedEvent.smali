.class public Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;
.super Ljava/lang/Object;
.source "CategoryChangedEvent.java"


# instance fields
.field private final category:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;->category:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/events/CategoryChangedEvent;->category:Ljava/lang/String;

    return-object v0
.end method
