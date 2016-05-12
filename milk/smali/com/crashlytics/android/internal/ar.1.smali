.class final Lcom/crashlytics/android/internal/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/internal/au;


# instance fields
.field private a:Z

.field private synthetic b:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/aq;Ljava/lang/StringBuilder;)V
    .locals 1

    .prologue
    .line 545
    iput-object p2, p0, Lcom/crashlytics/android/internal/ar;->b:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crashlytics/android/internal/ar;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/crashlytics/android/internal/ar;->a:Z

    if-eqz v0, :cond_0

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/internal/ar;->a:Z

    .line 555
    :goto_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/ar;->b:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 556
    return-void

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/internal/ar;->b:Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
