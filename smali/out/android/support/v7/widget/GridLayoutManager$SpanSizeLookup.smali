.class public abstract Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SpanSizeLookup"
.end annotation


# instance fields
.field private mCacheSpanIndices:Z

.field final mSpanIndexCache:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 830
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 832
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    .line 834
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return-void
.end method


# virtual methods
.method findReferenceIndexFromCache(I)I
    .registers 6
    .param p1, "position"    # I

    .line 940
    const/4 v0, 0x0

    .line 941
    .local v0, "lo":I
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 943
    .local v1, "hi":I
    :goto_9
    if-gt v0, v1, :cond_1e

    .line 944
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 945
    .local v2, "mid":I
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 946
    .local v3, "midVal":I
    if-ge v3, p1, :cond_1a

    .line 947
    add-int/lit8 v0, v2, 0x1

    goto :goto_1d

    .line 949
    :cond_1a
    add-int/lit8 v2, v2, -0x1

    .line 951
    move v1, v2

    .end local v2    # "mid":I
    .end local v3    # "midVal":I
    :goto_1d
    goto :goto_9

    .line 952
    :cond_1e
    add-int/lit8 v2, v0, -0x1

    .line 953
    .local v2, "index":I
    if-ltz v2, :cond_31

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_31

    .line 954
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    return v3

    .line 956
    :cond_31
    const/4 v3, -0x1

    return v3
.end method

.method getCachedSpanIndex(II)I
    .registers 6
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 873
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-nez v0, :cond_9

    .line 874
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v0

    return v0

    .line 876
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 877
    .local v0, "existing":I
    if-eq v0, v1, :cond_13

    .line 878
    return v0

    .line 880
    :cond_13
    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v1

    .line 881
    .local v1, "value":I
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 882
    return v1
.end method

.method public getSpanGroupIndex(II)I
    .registers 8
    .param p1, "adapterPosition"    # I
    .param p2, "spanCount"    # I

    .line 970
    const/4 v0, 0x0

    .line 971
    .local v0, "span":I
    const/4 v1, 0x0

    .line 972
    .local v1, "group":I
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v2

    .line 973
    .local v2, "positionSpanSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    if-ge v3, p1, :cond_1c

    .line 974
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v4

    .line 975
    .local v4, "size":I
    add-int/2addr v0, v4

    .line 976
    if-ne v0, p2, :cond_14

    .line 977
    const/4 v0, 0x0

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 979
    :cond_14
    if-le v0, p2, :cond_19

    .line 981
    move v0, v4

    .line 982
    add-int/lit8 v1, v1, 0x1

    .line 973
    .end local v4    # "size":I
    :cond_19
    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 985
    .end local v3    # "i":I
    :cond_1c
    add-int v3, v0, v2

    if-le v3, p2, :cond_22

    .line 986
    add-int/lit8 v1, v1, 0x1

    .line 988
    :cond_22
    return v1
.end method

.method public getSpanIndex(II)I
    .registers 10
    .param p1, "position"    # I
    .param p2, "spanCount"    # I

    .line 909
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v0

    .line 910
    .local v0, "positionSpanSize":I
    const/4 v1, 0x0

    if-ne v0, p2, :cond_8

    .line 911
    return v1

    .line 913
    :cond_8
    const/4 v2, 0x0

    .line 914
    .local v2, "span":I
    const/4 v3, 0x0

    .line 916
    .local v3, "startPos":I
    iget-boolean v4, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-lez v4, :cond_2a

    .line 917
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->findReferenceIndexFromCache(I)I

    move-result v4

    .line 918
    .local v4, "prevKey":I
    if-ltz v4, :cond_2a

    .line 919
    iget-object v5, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v6

    add-int v2, v5, v6

    .line 920
    add-int/lit8 v3, v4, 0x1

    .line 923
    .end local v4    # "prevKey":I
    :cond_2a
    move v4, v2

    move v2, v3

    .local v2, "i":I
    .local v4, "span":I
    :goto_2c
    if-ge v2, p1, :cond_3d

    .line 924
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v5

    .line 925
    .local v5, "size":I
    add-int/2addr v4, v5

    .line 926
    if-ne v4, p2, :cond_37

    .line 927
    const/4 v4, 0x0

    goto :goto_3a

    .line 928
    :cond_37
    if-le v4, p2, :cond_3a

    .line 930
    move v4, v5

    .line 923
    .end local v5    # "size":I
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 933
    .end local v2    # "i":I
    :cond_3d
    add-int v2, v4, v0

    if-gt v2, p2, :cond_42

    .line 934
    return v4

    .line 936
    :cond_42
    return v1
.end method

.method public abstract getSpanSize(I)I
.end method

.method public invalidateSpanIndexCache()V
    .registers 2

    .line 860
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mSpanIndexCache:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 861
    return-void
.end method

.method public isSpanIndexCacheEnabled()Z
    .registers 2

    .line 869
    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    return v0
.end method

.method public setSpanIndexCacheEnabled(Z)V
    .registers 2
    .param p1, "cacheSpanIndices"    # Z

    .line 852
    iput-boolean p1, p0, Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;->mCacheSpanIndices:Z

    .line 853
    return-void
.end method
