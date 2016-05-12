.class final Lcom/crashlytics/android/P;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/Date;

.field private synthetic b:Ljava/lang/Thread;

.field private synthetic c:Ljava/lang/Throwable;

.field private synthetic d:Lcom/crashlytics/android/v;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 359
    iput-object p1, p0, Lcom/crashlytics/android/P;->d:Lcom/crashlytics/android/v;

    iput-object p2, p0, Lcom/crashlytics/android/P;->a:Ljava/util/Date;

    iput-object p3, p0, Lcom/crashlytics/android/P;->b:Ljava/lang/Thread;

    iput-object p4, p0, Lcom/crashlytics/android/P;->c:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 362
    iget-object v0, p0, Lcom/crashlytics/android/P;->d:Lcom/crashlytics/android/v;

    invoke-static {v0}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/v;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/crashlytics/android/P;->d:Lcom/crashlytics/android/v;

    iget-object v1, p0, Lcom/crashlytics/android/P;->a:Ljava/util/Date;

    iget-object v2, p0, Lcom/crashlytics/android/P;->b:Ljava/lang/Thread;

    iget-object v3, p0, Lcom/crashlytics/android/P;->c:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, v3}, Lcom/crashlytics/android/v;->b(Lcom/crashlytics/android/v;Ljava/util/Date;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 365
    :cond_0
    return-void
.end method
