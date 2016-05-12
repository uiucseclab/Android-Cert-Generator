.class final Lcom/crashlytics/android/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/v;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;)V
    .locals 0

    .prologue
    .line 1861
    iput-object p1, p0, Lcom/crashlytics/android/E;->a:Lcom/crashlytics/android/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/crashlytics/android/E;->a:Lcom/crashlytics/android/v;

    iget-object v1, p0, Lcom/crashlytics/android/E;->a:Lcom/crashlytics/android/v;

    sget-object v2, Lcom/crashlytics/android/f;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/v;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/v;->a([Ljava/io/File;)V

    .line 1865
    return-void
.end method
