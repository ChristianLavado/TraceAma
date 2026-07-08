def verify_batch_data(farmer_id, origin_code, weight_kg):
    if weight_kg <= 0:
        print(f"Error: Invalid weight {weight_kg}kg for Farmer {farmer_id}.")
        return False
        
    print(f"Success: Batch from {origin_code} weighing {weight_kg}kg is verified.")
    print("Ready for blockchain tokenization.")
    return True

if __name__ == "__main__":
    print("--- TraceAma Automated Verification ---")
    test_farmer = "FARMER_089"
    test_origin = "JUNIN_PE"
    test_weight = 450
    
    is_valid = verify_batch_data(test_farmer, test_origin, test_weight)
    if is_valid:
        print("IPFS Hash: QmTraceAmaDataHash123456789")
