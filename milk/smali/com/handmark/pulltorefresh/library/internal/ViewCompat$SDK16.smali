.class Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK16;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SDK16"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 197
    # invokes: Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->access$100(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 201
    # invokes: Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->access$200(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 202
    return-void
.end method
