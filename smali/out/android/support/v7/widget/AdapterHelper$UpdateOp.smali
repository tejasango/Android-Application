.class Landroid/support/v7/widget/AdapterHelper$UpdateOp;
.super Ljava/lang/Object;
.source "AdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateOp"
.end annotation


# static fields
.field static final ADD:I = 0x1

.field static final MOVE:I = 0x8

.field static final POOL_SIZE:I = 0x1e

.field static final REMOVE:I = 0x2

.field static final UPDATE:I = 0x4


# instance fields
.field cmd:I

.field itemCount:I

.field payload:Ljava/lang/Object;

.field positionStart:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "positionStart"    # I
    .param p3, "itemCount"    # I
    .param p4, "payload"    # Ljava/lang/Object;

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    iput p1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 653
    iput p2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    .line 654
    iput p3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    .line 655
    iput-object p4, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    .line 656
    return-void
.end method


# virtual methods
.method cmdToString()Ljava/lang/String;
    .registers 3

    .line 659
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_18

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    packed-switch v0, :pswitch_data_1c

    .line 669
    const-string v0, "??"

    return-object v0

    .line 663
    :pswitch_f
    const-string v0, "rm"

    return-object v0

    .line 661
    :pswitch_12
    const-string v0, "add"

    return-object v0

    .line 667
    :cond_15
    const-string v0, "mv"

    return-object v0

    .line 665
    :cond_18
    const-string v0, "up"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 681
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 682
    return v0

    .line 684
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_5d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_5d

    .line 688
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;

    .line 690
    .local v2, "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    if-eq v3, v4, :cond_1c

    .line 691
    return v1

    .line 693
    :cond_1c
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ne v3, v0, :cond_3a

    .line 695
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-ne v3, v4, :cond_3a

    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-ne v3, v4, :cond_3a

    .line 696
    return v0

    .line 699
    :cond_3a
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    if-eq v3, v4, :cond_41

    .line 700
    return v1

    .line 702
    :cond_41
    iget v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    if-eq v3, v4, :cond_48

    .line 703
    return v1

    .line 705
    :cond_48
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_57

    .line 706
    iget-object v3, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    iget-object v4, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    .line 707
    return v1

    .line 709
    :cond_57
    iget-object v3, v2, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    if-eqz v3, :cond_5c

    .line 710
    return v1

    .line 713
    :cond_5c
    return v0

    .line 685
    .end local v2    # "op":Landroid/support/v7/widget/AdapterHelper$UpdateOp;
    :cond_5d
    :goto_5d
    return v1
.end method

.method public hashCode()I
    .registers 4

    .line 718
    iget v0, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmd:I

    .line 719
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    add-int/2addr v1, v2

    .line 720
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    add-int/2addr v0, v2

    .line 721
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    invoke-virtual {p0}, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->cmdToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->positionStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v7/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
