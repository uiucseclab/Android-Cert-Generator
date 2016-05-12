.class Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;
.super Ljava/lang/Object;
.source "SwipeListViewTouchListener.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PendingDismissData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;",
        ">;"
    }
.end annotation


# instance fields
.field public position:I

.field final synthetic this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;ILandroid/view/View;)V
    .locals 0
    .param p2, "position"    # I
    .param p3, "view"    # Landroid/view/View;

    .prologue
    .line 980
    iput-object p1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->this$0:Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput p2, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->position:I

    .line 982
    iput-object p3, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->view:Landroid/view/View;

    .line 983
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;)I
    .locals 2
    .param p1, "other"    # Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;

    .prologue
    .line 988
    iget v0, p1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->position:I

    iget v1, p0, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 976
    check-cast p1, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;->compareTo(Lcom/samsung/milk/milkvideo/swipelistview/SwipeListViewTouchListener$PendingDismissData;)I

    move-result v0

    return v0
.end method
