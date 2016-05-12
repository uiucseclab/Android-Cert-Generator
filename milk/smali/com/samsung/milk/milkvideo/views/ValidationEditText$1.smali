.class Lcom/samsung/milk/milkvideo/views/ValidationEditText$1;
.super Ljava/lang/Object;
.source "ValidationEditText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/milk/milkvideo/views/ValidationEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;


# direct methods
.method constructor <init>(Lcom/samsung/milk/milkvideo/views/ValidationEditText;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$1;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/milk/milkvideo/views/ValidationEditText$1;->this$0:Lcom/samsung/milk/milkvideo/views/ValidationEditText;

    invoke-virtual {v0}, Lcom/samsung/milk/milkvideo/views/ValidationEditText;->validate()V

    .line 59
    return-void
.end method
