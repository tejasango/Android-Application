.class final Landroid/support/transition/ChangeBounds$2;
.super Landroid/util/Property;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/ChangeBounds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/transition/ChangeBounds$ViewBounds;",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .param p2, "x1"    # Ljava/lang/String;

    .line 87
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/graphics/PointF;>;"
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;
    .registers 3
    .param p1, "viewBounds"    # Landroid/support/transition/ChangeBounds$ViewBounds;

    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    invoke-virtual {p0, p1}, Landroid/support/transition/ChangeBounds$2;->get(Landroid/support/transition/ChangeBounds$ViewBounds;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "viewBounds"    # Landroid/support/transition/ChangeBounds$ViewBounds;
    .param p2, "topLeft"    # Landroid/graphics/PointF;

    .line 90
    invoke-virtual {p1, p2}, Landroid/support/transition/ChangeBounds$ViewBounds;->setTopLeft(Landroid/graphics/PointF;)V

    .line 91
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 87
    check-cast p1, Landroid/support/transition/ChangeBounds$ViewBounds;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/support/transition/ChangeBounds$2;->set(Landroid/support/transition/ChangeBounds$ViewBounds;Landroid/graphics/PointF;)V

    return-void
.end method