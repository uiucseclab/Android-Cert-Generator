.class public Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;
.super Ljava/lang/Object;
.source "process entered unexpected state "


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Landroid/app/PendingIntent;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e:I

    .line 24
    iput-boolean v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f:Z

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e:I

    .line 24
    iput-boolean v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f:Z

    .line 34
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->c:Landroid/app/PendingIntent;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e:I

    .line 24
    iput-boolean v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f:Z

    .line 30
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->b:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Z)Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f:Z

    .line 78
    return-object p0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 58
    iput p1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e:I

    .line 59
    return-void
.end method

.method public final a(Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a:Ljava/util/ArrayList;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->d:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->e:I

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/browser/lite/widget/BrowserLiteMenuItem;->f:Z

    return v0
.end method
