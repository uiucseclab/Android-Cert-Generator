.class final Lcom/crashlytics/android/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/crashlytics/android/p;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/p;)V
    .locals 0

    .prologue
    .line 717
    iput-object p1, p0, Lcom/crashlytics/android/s;->a:Lcom/crashlytics/android/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x1

    .line 720
    iget-object v0, p0, Lcom/crashlytics/android/s;->a:Lcom/crashlytics/android/p;

    iget-object v0, v0, Lcom/crashlytics/android/p;->b:Lcom/crashlytics/android/Crashlytics;

    invoke-static {v1}, Lcom/crashlytics/android/Crashlytics;->a(Z)V

    .line 721
    iget-object v0, p0, Lcom/crashlytics/android/s;->a:Lcom/crashlytics/android/p;

    iget-object v0, v0, Lcom/crashlytics/android/p;->a:Lcom/crashlytics/android/u;

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/u;->a(Z)V

    .line 722
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 723
    return-void
.end method
