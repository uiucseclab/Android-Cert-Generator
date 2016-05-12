.class Lcom/handmark/pulltorefresh/library/internal/ViewCompat$SDK11;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/internal/ViewCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SDK11"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setLayerType(Landroid/view/View;I)V
    .locals 0
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I

    .prologue
    .line 189
    # invokes: Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->setLayerType(Landroid/view/View;I)V
    invoke-static {p0, p1}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat$Methods;->access$000(Landroid/view/View;I)V

    .line 190
    return-void
.end method
