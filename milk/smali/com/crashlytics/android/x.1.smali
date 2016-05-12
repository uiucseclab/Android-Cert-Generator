.class final Lcom/crashlytics/android/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:J

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/crashlytics/android/v;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;JLjava/lang/String;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;

    iput-wide p2, p0, Lcom/crashlytics/android/x;->a:J

    iput-object p4, p0, Lcom/crashlytics/android/x;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/v;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->d(Lcom/crashlytics/android/v;)Lcom/crashlytics/android/internal/aq;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->e(Lcom/crashlytics/android/v;)Z

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;

    iget-object v0, p0, Lcom/crashlytics/android/x;->c:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->d(Lcom/crashlytics/android/v;)Lcom/crashlytics/android/internal/aq;

    move-result-object v0

    const/high16 v1, 0x10000

    iget-wide v2, p0, Lcom/crashlytics/android/x;->a:J

    iget-object v4, p0, Lcom/crashlytics/android/x;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/internal/aq;IJLjava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
