.class final Lcom/crashlytics/android/internal/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/internal/t;

.field private synthetic b:Lcom/crashlytics/android/internal/B;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/internal/B;Lcom/crashlytics/android/internal/t;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/crashlytics/android/internal/C;->b:Lcom/crashlytics/android/internal/B;

    iput-object p2, p0, Lcom/crashlytics/android/internal/C;->a:Lcom/crashlytics/android/internal/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/crashlytics/android/internal/C;->b:Lcom/crashlytics/android/internal/B;

    iget-object v1, p0, Lcom/crashlytics/android/internal/C;->a:Lcom/crashlytics/android/internal/t;

    invoke-static {v0, v1}, Lcom/crashlytics/android/internal/B;->a(Lcom/crashlytics/android/internal/B;Ljava/lang/Object;)V

    .line 52
    return-void
.end method
