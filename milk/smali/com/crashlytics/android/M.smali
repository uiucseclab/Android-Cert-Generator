.class final Lcom/crashlytics/android/M;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/crashlytics/android/v;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/v;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/crashlytics/android/M;->a:Lcom/crashlytics/android/v;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/crashlytics/android/M;->a:Lcom/crashlytics/android/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/crashlytics/android/v;->a(Lcom/crashlytics/android/v;Z)Z

    .line 277
    return-void
.end method
