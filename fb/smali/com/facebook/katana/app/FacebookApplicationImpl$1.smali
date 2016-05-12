.class Lcom/facebook/katana/app/FacebookApplicationImpl$1;
.super Ljava/lang/Object;
.source "width"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/facebook/katana/app/FacebookApplicationImpl;


# direct methods
.method constructor <init>(Lcom/facebook/katana/app/FacebookApplicationImpl;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;->a:Lcom/facebook/katana/app/FacebookApplicationImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/facebook/katana/app/FacebookApplicationImpl$1;->a:Lcom/facebook/katana/app/FacebookApplicationImpl;

    invoke-virtual {v0}, Lcom/facebook/katana/app/FacebookApplicationImpl;->f()V

    .line 120
    return-void
.end method
